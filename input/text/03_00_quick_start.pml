[ch [title Quick Start]

    After [link url=[!get pml_website]/downloads/install.html text=installing] PML, you can create a web document in three easy steps:

    [list
        [el Create a PML file]
        [el Convert the PML file to an HTML file]
        [el Open the HTML file in your browser]
    ]

    Here is an example of how to proceed:

    [b 1. Create a PML file]

    Use your preferred text editor to create a text file named [c example.pml] in any directory of your choice, and with the following content:
    [code
        [doc [title First test]
            This is a [i simple] example.
        ]
    code]

    [b 2. Convert the PML file to an HTML file]

    You can do this by using the desktop application (GUI) or the command line interface (CLI):

    [list

        [el [header Desktop Application (GUI)]

            [list
                [el Open the application named [i PML to HTML Converter] in your operating system's applications menu (on Windows the application is located under the menu [i Practical Markup Language]).]

                [el
                    Fill in fields [c PML file to convert] and [c Directory of HTML document]. Here is an example of the window with the fields filled out (Windows version):

                    [image source=[!get images_dir]/PML_GUI_parameters.png width=600]

                    [note The above image only shows a reduced set of the fields actually displayed in the window.]
                ]

                [el Click the [c Convert] button.]

                [el
                    A confirmation message like the following one is displayed:

                    [image source=[!get images_dir]/PML_GUI_confirmation.png]
                ]
            ]
        ]

        [el [header Command Line Interface (CLI)]

            Instead of using the desktop application, you can use PML's command line interface.

            Open a terminal in the directory of file [c example.pml].

            [note
                For instructions on how to do this in Windows, search for "open a terminal in Windows 10", or refer to [link url=https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10/ text=this] article.
            ]

            Convert the PML file into an HTML file named [c example.html] by entering the following command:
            [input
                pmlc example.pml
            input]

            [-
            [note
                If your [c .pml] file is not located in the current working directory of your terminal window, then you must type the absolute or relative path of the [c .pml] file. For example:
                [input
                    pmlc C:\tests\pml\example.pml
                input]
                or:
                [input
                    pmlc ..\..\tests\pml\example.pml
                input]
            ]
            -]

            By default, the resulting HTML file is written to directory [c output] of your current working directory (i.e. [c output/example.html]).

            Here is an example of a terminal session in Windows:
            [input
                C:\tests>pmlc example.pml
                File C:\tests\output\example.html has been created.
                C:\tests>
            input]

            [admon (label=Tips)
                For more control over the conversion process, you can also use the [c convert] command:
                [input
                    pmlc convert --input_file example.pml
                input]
                The [c convert] command has a number of options.
                For information about its command line arguments, type:
                [input
                    pmlc command_info --command convert
                input]

                For general help type:
                [input
                    pmlc help
                input]

                You can open the desktop application from the terminal by simply typing:
                [input
                    pmlc
                input]
            ]
        ]
    ]

    [b 3. Open the HTML file]

    Open file [c output/example.html] in your browser. The result looks like this:
    [image source=[!get images_dir]/simple_example_result.png border=yes]
]
