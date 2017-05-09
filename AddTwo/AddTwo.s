# AddTwo.s
#
# This program adds two integers and prints in console
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

	.data	# Data declaration
# Output String
out_string:	.asciiz	"\nSum of two numbers:\n"

	.text	# Assembly Instructions
main:		# Code starts here
	li $s0, 12
	li $s1, 23
	add $s3, $s1, $s0
	li $v0, 4				# System call code for printing string is 4
	la $a0, out_string			# Output string passed as argument
	syscall					# This will call OS to print ($a0: String)
	li $v0, 1				# System call code for printing string is 1
	move $a0, $s3				# Output integer moved to ($a0)
	syscall					# This will call OS to print ($a0: Integer)
	li $v0, 10				# System call code for exit is 10
	syscall					# Program terminated by OS
