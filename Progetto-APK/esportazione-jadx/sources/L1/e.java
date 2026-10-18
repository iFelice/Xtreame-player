package L1;

import A0.F;
import android.adservices.topics.EncryptedTopic;
import android.adservices.topics.GetTopicsResponse;
import android.adservices.topics.Topic;
import java.util.ArrayList;
import java.util.Iterator;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {
    public static c a(GetTopicsResponse getTopicsResponse) {
        ArrayList arrayList = new ArrayList();
        Iterator it = getTopicsResponse.getTopics().iterator();
        while (it.hasNext()) {
            Topic topicJ = F.j(it.next());
            arrayList.add(new f(topicJ.getTopicId(), topicJ.getTaxonomyVersion(), topicJ.getModelVersion()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (EncryptedTopic encryptedTopic : getTopicsResponse.getEncryptedTopics()) {
            byte[] encryptedTopic2 = encryptedTopic.getEncryptedTopic();
            q0.g(encryptedTopic2, "encryptedTopic.encryptedTopic");
            String keyIdentifier = encryptedTopic.getKeyIdentifier();
            q0.g(keyIdentifier, "encryptedTopic.keyIdentifier");
            byte[] encapsulatedKey = encryptedTopic.getEncapsulatedKey();
            q0.g(encapsulatedKey, "encryptedTopic.encapsulatedKey");
            arrayList2.add(new a(keyIdentifier, encryptedTopic2, encapsulatedKey));
        }
        return new c(arrayList, arrayList2);
    }
}
