# name: idan (modified)

function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l green (set_color -o green)
  set -l normal (set_color normal)

  set -l i $cyan(whoami)

  # output the prompt, left to right

  # Add a newline before prompts
  echo -e ""

  if test (rubies-current) != system 
      echo -n -s (set_color -b cyan black) '[' (rubies-current) ']' $normal ' '
  end

  # Display the current directory name
  # echo -n -s $cwd $normal
  
  # Display current user instead
  echo -n -s $i $normal


  # Show git branch and dirty state
  if [ (_git_branch_name) ]
    set -l git_branch '(' (_git_branch_name) ')'

    if [ (_is_git_dirty) ]
      set git_info $red $git_branch " ★ "
    else
      set git_info $green $git_branch
    end
    echo -n -s ' · ' $git_info $normal
  end

  # Terminate with a nice prompt char
  echo -n -s ' ⟩ ' $normal

end
