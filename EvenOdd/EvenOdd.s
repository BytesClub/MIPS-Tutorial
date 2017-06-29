# EvenOdd.s
#
# This program checks if a integer is even/odd and prints in console
# Copyright (C) 2017 Bytes Club <bytes-club@googlegroups.com>
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	.data		# Data declaration
even_str:	.asciiz	"The number is even!"		# Ouput string for even integer
odd_str:	.asciiz	"The number is odd!"		# Output string for odd integer

	.text		# Assembly instructions
main:
	li $s0, 4		# Loads test integer into $s0 register
	li $s1, 2		# Loads 2 in $s1 register
	div $s0, $s1		# Divides $s0 by $s1 and storer Quotent in LO, Reminder in HI
	mfhi $s3		# Loads remainder from HI to $s3
	beq $s3, $zero, Even	# Compares if $s3 equals 0, then branch to Even
	li $v0, 4		# Prepares OS for printing string
	la $a0, odd_str		# Loads odd string on output
	syscall			# Calls OS to execute
	li $v0, 10		# Prepares OS for exiting
	syscall			# Calls OS to execute
Even:
	li $v0, 4		# Prepares OS for printing string
	la $a0, even_str	# Loads even string on output
	syscall			# Calls OS to execute
	li $v0, 10		# Prepares OS for exiting
	syscall			# Calls OS to execute

