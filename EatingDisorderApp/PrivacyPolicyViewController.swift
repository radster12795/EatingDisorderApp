//
//  PrivacyPolicyViewController.swift
//  EatingDisorderApp
//
//  Created by Louis Deguito on 23/06/19.
//  Copyright © 2019 Louis and Michael Team. All rights reserved.
//

import UIKit

class PrivacyPolicyViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    // Privacy Policy ~Louis Deguito June 25, 2019
    var allFormattedDescriptions = [
        Formatted(heading: "Privacy Policy", descriptionText: "Louis and Michael Group built the Eat Up! app as a Free app. This SERVICE is provided by Louis and Michael Group at no cost and is intended for use as is. This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service. If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy. The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Eat Up! unless otherwise defined in this Privacy Policy."),
        Formatted(heading: "Information Collection and Use", descriptionText: "For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to Email, Username, Password, Gender, Age, Food, Place, Companion, Feeling, Meal, Binge. The information that we request will be retained by us and used as described in this privacy policy.The app does use third party services that may collect information used to identify you.Link to privacy policy of third party service providers used by the app •    Firebase Analytics"),
        Formatted(heading: "Log Data", descriptionText: "We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics."),
        Formatted(heading: "Cookies", descriptionText: "Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory. This Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service."),
        Formatted(heading: "Service Providers", descriptionText: "We may employ third-party companies and individuals due to the following reasons:  •    To facilitate our Service;  •    To provide the Service on our behalf;  •    To perform Service-related services; or  •    To assist us in analyzing how our Service is used. We want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose."),
        Formatted(heading: "Security", descriptionText: "We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security."),
        Formatted(heading: "Links to Other Sites", descriptionText: "This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services."),
        Formatted(heading: "Children's Privacy", descriptionText: "These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions."),
        Formatted(heading: "Changes to This Privacy Policy", descriptionText: "We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page."),
        Formatted(heading: "Contact Us", descriptionText: "If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at sing4346@manukaumail.com, degu23@manukaumail.com.")
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
