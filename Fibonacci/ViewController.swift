//
//  ViewController.swift
//  Fibonacci
//
//  Created by spychatter mx on 1/23/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		_ = fib(n: 10)
	}
	
	typealias Fibo = (last: Int,next: Int)
	
	func fib(n: Int) -> Int{
		return (Array(1..<n).reduce(Fibo(last:0, next:1)){ acc, _ in
			print(acc.next)
			return (acc.next, acc.last + acc.next)
		}).next
	}

}

