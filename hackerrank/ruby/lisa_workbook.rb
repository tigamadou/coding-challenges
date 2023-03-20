=begin
Lisa's Workbook 

Challenge link: https://www.hackerrank.com/challenges/lisa-workbook/problem?h_r=internal-search

Lisa just got a new math workbook. A workbook contains exercise problems, grouped into chapters. 
Lisa believes a problem to be special if its index (within a chapter) is the same as the page number where it's located. The format of Lisa's book is as follows:

There are n chapters in Lisa's workbook, numbered from 1 to n.
The ith chapter has  problems, numbered from 1 to arr[i] .
Each page can hold up to k problems. Only a chapter's last page of exercises may contain fewer than k problems.
Each new chapter starts on a new page, so a page will never contain problems from more than one chapter.
The page number indexing starts at 1.
Given the details for Lisa's workbook, can you count its number of special problems?

=end

def workbook(n, k, arr)
	# Total pages of the book
	total_pages = 0
	#  Special problems counter
	specials_counter=0
	# Loop through the chapter's problem array
	arr.length.times do |i|
		# For each new chapter the page number is incremented 
		total_pages+=1
		#the number of problem for this chapter
		problem_number = arr[i]
		# A counter for the problem on the current page
		problem_counter = 0
		# interate trough all the problem with a loop
		problem_number.times do |z|
			# increment the problem counter for each problem
			problem_counter +=1 
			# incement the special problem if the problem number is equal to the page number
			specials_counter +=1 if total_pages === (z+1) 
			# if the number of problem on the page is equal to the maximum number of problems per page
			if problem_counter == k && problem_number != (z+1) 
				# incement the page number
				total_pages+=1
				#reset the current page's problem counter 
				problem_counter = 0
			end
		end
	end  
	specials_counter
end