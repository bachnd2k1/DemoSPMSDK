//
//  File.swift
//  SPM_SDK
//
//  Created by Nghiem Dinh Bach on 5/8/26.
//

import Foundation
import UIKit
import Kingfisher

public final class DemoViewController: UIViewController {

    private let remoteImageView = UIImageView()
    private let localImageView = UIImageView()

    public override func viewDidLoad() {
        super.viewDidLoad()

        title = "SPM SDK Demo"
        view.backgroundColor = .white

        setupUI()
        loadImages()
    }

    private func setupUI() {

        remoteImageView.translatesAutoresizingMaskIntoConstraints = false
        localImageView.translatesAutoresizingMaskIntoConstraints = false

        remoteImageView.contentMode = .scaleAspectFit
        localImageView.contentMode = .scaleAspectFit

        remoteImageView.backgroundColor = UIColor.systemGray6
        localImageView.backgroundColor = UIColor.systemGray6

        view.addSubview(remoteImageView)
        view.addSubview(localImageView)

        NSLayoutConstraint.activate([

            remoteImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            remoteImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            remoteImageView.widthAnchor.constraint(equalToConstant: 220),
            remoteImageView.heightAnchor.constraint(equalToConstant: 220),

            localImageView.topAnchor.constraint(equalTo: remoteImageView.bottomAnchor, constant: 40),
            localImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            localImageView.widthAnchor.constraint(equalToConstant: 220),
            localImageView.heightAnchor.constraint(equalToConstant: 220)

        ])
    }

    private func loadImages() {

        let url = URL(string: "https://picsum.photos/400")

        remoteImageView.kf.setImage(with: url)

        localImageView.image = UIImage(
            named: "chat_service_ic_16inline_vinid_logo_square",
            in: Bundle.module,
            compatibleWith: nil
        )
    }
}
