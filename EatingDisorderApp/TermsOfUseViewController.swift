//
//  TermsOfUseViewController.swift
//  EatingDisorderApp
//
//  Created by Louis Deguito on 23/06/19.
//  Copyright © 2019 Louis and Michael Team. All rights reserved.
//

import UIKit

class TermsOfUseViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    //Terms of Use ~Louis Deguito June 25,2019
    var allFormattedDescriptions = [Formatted(heading: "TERMS OF USE", descriptionText: ""),
                                    Formatted(heading: "1. Terms of Use", descriptionText: "By downloading, browsing, accessing or using this mobile application (“Eat Up!”), you agree to be bound by these Terms and Conditions of Use. We reserve the right to amend these terms and conditions at any time. If you disagree with any of these Terms and Conditions of Use, you must immediately discontinue your access to the Mobile Application and your use of the services offered on the Mobile Application. Continued use of the Mobile Application will constitute acceptance of these Terms and Conditions of Use, as may be amended from time to time."),
                                    Formatted(heading: "2. Definitions", descriptionText: "In these Terms and Conditions of Use, the following capitalised terms shall have the following meanings, except where the context otherwise requires: 'Account' means an account created by a User on the Mobile Application as part of Registration. 'Privacy Policy' means the privacy policy set out in Clause 14 of these Terms and Conditions of Use. 'Register' means to create an Account on the Mobile Application and 'Registration' means the act of creating such an Account. 'Services' means all the services provided by Eat Up! via the Mobile Application to Users, and 'Service' means any one of them, 'Users' means users of the Mobile Application, including you and 'User' means any one of them."),
                                    Formatted(heading: "3. General Issues About The Mobile Application And The Services", descriptionText: "3.1 Applicability of terms and conditions: The use of any Services and/or the Mobile Application are subject to these Terms and Conditions of Use. 3.2 Scope: The Mobile Application and the Services is for non-commercial, personal use only and must not be used for business purposes. 3.3 Prevention on use: We reserve the right to prevent you using the Mobile Application and the Service (or any part of them). 3.4 Equipment and Networks: The provision of the Services and the Mobile Application does not include the provision of a mobile telephone or handheld device or other necessary equipment to access the Mobile Application or the Services. To use the Mobile Application or Services, you will require Internet connectivity and appropriate telecommunication links. You acknowledge that the terms of agreement with your respective mobile network provider ('Mobile Provider') will continue to apply when using the Mobile Application. As a result, you may be charged by the Mobile Provider for access to network connection services for the duration of the connection while accessing the Mobile Application or any such third party charges as may arise. You accept responsibility for any such charges that arise. 3.5 Permission to use Mobile Application: If you are not the bill payer for the mobile telephone or handheld device being used to access the Mobile Application, you will be assumed to have received permission from the bill payer for using the Mobile Application. 3.6 License to Use Material: By submitting any text or images (including photographs) via the Application, you represent that you are the owner of the Material, or have proper authorization from the owner of the Material to use, reproduce and distribute it. You hereby grant us a worldwide, royalty-free, non-exclusive license to use the Material to promote any products or services."),
                                    Formatted(heading: "4. Your Obligations", descriptionText: "4.1 Accurate information: You warrant that all information provided on Registration and contained as part of your Account is true, complete and accurate and that you will promptly inform us of any changes to such information by updating the information in your Account. 4.2 Prohibitions in relation to usage of Services or Mobile Application: Without limitation, you undertake not to use or permit anyone else to use the Services or Mobile Application: - 4.2.1 to send or receive any material which is not civil or tasteful 4.2.2 to send or receive any material which is threatening, grossly offensive, of an indecent, obscene or menacing character, blasphemous or defamatory of any person, in contempt of court or in breach of confidence, copyright, rights of personality, publicity or privacy or any other third party rights; 4.2.3 to send or receive any material for which you have not obtained all necessary licences and/or approvals (from us or third parties); or which constitutes or encourages conduct that would be considered a criminal offence, give rise to civil liability, or otherwise be contrary to the law of or infringe the rights of any third party in any country in the world; 4.2.4 to send or receive any material which is technically harmful (including computer viruses, logic bombs, Trojan horses, worms, harmful components, corrupted data or other malicious software or harmful data); 4.2.5 to cause annoyance, inconvenience or needless anxiety; 4.2.6 to intercept or attempt to intercept any communications transmitted by way of a telecommunications system; 4.2.7 for a purpose other than which we have designed them or intended them to be used; 4.2.8 for any fraudulent purpose; 4.2.9 other than in conformance with accepted Internet practices and practices of any connected networks; 4.2.10 in any way which is calculated to incite hatred against any ethnic, religious or any other minority or is otherwise calculated to adversely affect any individual, group or entity; or 4.2.11 in such a way as to, or commit any act that would or does, impose an unreasonable or disproportionately large load on our infrastructure. 4.3 Prohibitions in relation to usage of Services, Mobile Application: Without limitation, you further undertake not to or permit anyone else to:- 4.3.1 furnish false data including false names, addresses and contact details. 4.3.2 attempt to circumvent our security or network including to access data not intended for you, log into a server or account you are not expressly authorised to access, or probe the security of other networks (such as running a port scan); 4.3.3 execute any form of network monitoring which will intercept data not intended for you; 4.3.4 enter into fraudulent interactions or transactions with us (including interacting or transacting purportedly on behalf of a third party where you have no authority to bind that third party or you are pretending to be a third party); 4.3.5 extract data from or hack into the Mobile Application; 4.3.6 use the Services or Mobile Application in breach of these Terms and Conditions of Use; 4.3.7 engage in any unlawful activity in connection with the use of the Mobile Application or the Services; or 4.3.8 engage in any conduct which, in our exclusive reasonable opinion, restricts or inhibits any other customer from properly using or enjoying the Mobile Application or Services."),
                                    Formatted(heading: "5. Rules About Use Of The Services And The Mobile Application", descriptionText: "5.1 We will use reasonable endeavours to correct any errors or omissions as soon as practicable after being notified of them. However, we do not guarantee that the Services or the Mobile Application will be free of faults, and we do not accept liability for any such faults, errors or omissions. In the event of any such error, fault or omission, you should report it by contacting us at degu23@manukaumail.com and sing4346@manukaumail.com. 5.2 We do not warrant that your use of the Services or the Mobile Application will be uninterrupted and we do not warrant that any information (or messages) transmitted via the Services or the Mobile Application will be transmitted accurately, reliably, in a timely manner or at all. Notwithstanding that we will try to allow uninterrupted access to the Services and the Mobile Application, access to the Services and the Mobile Application may be suspended, restricted or terminated at any time. 5.3 We do not give any warranty that the Services and the Mobile Application are free from viruses or anything else which may have a harmful effect on any technology. 5.4 We reserve the right to change, modify, substitute, suspend or remove without notice any information or Services on the Mobile Application from time to time. Your access to the Mobile Application and/or the Services may also be occasionally restricted to allow for repairs, maintenance or the introduction of new facilities or services. We will attempt to restore such access as soon as we reasonably can. For the avoidance of doubt, we reserve the right to withdraw any information or Services from the Mobile Application at any time. 5.5 We reserve the right to block access to and/or to edit or remove any material which in our reasonable opinion may give rise to a breach of these Terms and Conditions of Use.")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textContent = NSMutableAttributedString()
        for (index, desc) in allFormattedDescriptions.enumerated() {
            let includeLinebreak = index < allFormattedDescriptions.count - 1
            textContent.append(desc.attributeString(includeLineBreak: includeLinebreak))
        }
        textView.attributedText = textContent
    }
    
    //Struct and init for the format of the Terms of use ~Louis Deguito June 25,2019
    struct Formatted {
        var heading: String
        var descriptionText: String
        
        var bodyParagraphStyle: NSMutableParagraphStyle = {
            let style = NSMutableParagraphStyle()
            style.lineSpacing = 10
            style.paragraphSpacingBefore = 6
            style.paragraphSpacing = 6
            return style
        }()
        
        var headerParagraphStyle: NSMutableParagraphStyle = {
            let style = NSMutableParagraphStyle()
            style.paragraphSpacingBefore = 24
            return style
        }()
        
        var bodyAttributes: [NSAttributedString.Key: Any]
        var headerAttributes: [NSAttributedString.Key: Any]
        
        func attributeString(includeLineBreak: Bool = true) -> NSAttributedString {
            let result = NSMutableAttributedString()
            result.append(NSAttributedString(string: self.heading + "\n", attributes: self.headerAttributes))
            result.append(NSAttributedString(string: self.descriptionText, attributes: self.bodyAttributes))
            if includeLineBreak {
                result.append(NSAttributedString(string: "\n", attributes: self.bodyAttributes))
            }
            
            return result as NSAttributedString
        }
        
        init(heading: String, descriptionText: String) {
            self.heading = heading
            self.descriptionText = descriptionText
            self.bodyAttributes = [
                NSAttributedString.Key.font: UIFont(name: "ArialMT", size: 14)!,
                NSAttributedString.Key.paragraphStyle: bodyParagraphStyle
            ]
            self.headerAttributes = [
                NSAttributedString.Key.font: UIFont(name: "ArialHebrew-Bold", size: 22)!,
                NSAttributedString.Key.paragraphStyle: headerParagraphStyle,
                NSAttributedString.Key.foregroundColor: UIColor.black
            ]
        }
    }
    

    

}
