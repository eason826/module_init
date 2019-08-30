SECTIONS
{
  .data : {
	_myown_start = .;
	*(.myown)
  	_myown_end = .;
	}
}
