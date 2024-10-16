program cbos
    implicit none
    character(len=100) :: cmd
    character(len=100) :: question
    real :: magic8ball
    
    write(*, '(A)') "Booting..."
    call sleep(1)
    write(*, '(A)') "Welcome to C-Bos!"
    write(*, '(A)') "Type help for a list of commands."

    do
        write(*, '(A)', ADVANCE='NO') "> "
        read(*,*) cmd

        if (cmd == "help") then
            write(*, '(A)') "Keep in mind that all commands are case sensitive and only lowercase."
            write(*, '(A)') "Heres a list of commands:"
            write(*, '(A)') "exit (Exits C-Bos)"
            write(*, '(A)') "version (Prints the version of C-Bos)"
            write(*, '(A)') "magic8ball (Its in the name)"
        else if (cmd == "exit") then
            exit
        else if (cmd == "version") then
            write(*, '(A)') "C-Bos Fortran 1.0.0"
            write(*, '(A)') "Written by Thepuppetqueen57"
            write(*, '(A)') "https://github.com/Thepuppetqueen57"
            write(*, '(A)') "This is not an official Puppet Studios project."
            write(*, '(A)') "I am the creator of The Puppet Studios but this is not part of The Puppet Studios"
            write(*, '(A)') "You can the official C-Bos project here: https://github.com/The-Puppet-Studios/C-Bos"
        else if (cmd == "magic8ball") then
            write(*, '(A)', ADVANCE='NO') "What is your question: "
            read(*,*) question
            call random_number(magic8ball)

            if (magic8ball < 0.50) then
                write(*, '(A)') "No"
            else
                write(*, '(A)') "Yes"
            end if



        else
            write(*, '(A)') "Command not found. Type help for a list of commands."
        end if
    end do
end program cbos