domains
	I = integer
	S = symbol
	L = integer*



/* Simptom DataBase */
database - simptom_db
	simpton(I, S)

/* Bolezn DataBase */
database - bolezn_db
	bolezn(I, S, I, I, I, I, I, I, I, I)


predicates
	/*
		Some main stuff
	*/
	main_loop
	main_window
	main_menu
	menu_switch(I)

	/*
		Window stuff
	*/
	titul_window
	about_window
	view_db_window

	/*
		IO stuff(UI)
	*/

	/*
		DB stuff
	*/

	new_db
	load_db
	save_db

	add_db_simptom
	add_db_bolezngoal
	main_loop
clauses

    main_loop:-
		main_window, main_menu.

	main_window:-
		makewindow(99,65,7,"Main Menu",0,0,24,80).

	main_menu:-
		write(" Main menu: "), nl, nl,
		write("   1. About"), nl,
		write("   2. Load DB"), nl,
		write("   3. Save DB"), nl,
		write("   4. New DB"), nl,
		write("   5. View DB"), nl,
		write("   6. Add to DB"), nl,
		write("   7. Edit DB"), nl,
		write("   8. Logic Conclusion"), nl, nl,
		write("   0. Exit"), nl,nl,
		write("     Action: ")m
		readchar(N),
		menu_switch(N).	
    titul_window:-
        createwindow().
    about_window:-
        create_window().
    view_db_window:-
        create_window().