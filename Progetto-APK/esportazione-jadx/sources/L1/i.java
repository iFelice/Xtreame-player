package L1;

import A0.F;
import J6.C0205d;
import android.adservices.topics.GetTopicsRequest;
import android.adservices.topics.GetTopicsResponse;
import android.adservices.topics.Topic;
import android.adservices.topics.TopicsManager;
import java.util.ArrayList;
import java.util.Iterator;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TopicsManager f4629a;

    public i(TopicsManager topicsManager) {
        q0.h(topicsManager, "mTopicsManager");
        this.f4629a = topicsManager;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(i iVar, b bVar, p185x6.e eVar) throws Throwable {
        h hVar;
        GetTopicsRequest getTopicsRequestBuild;
        if (eVar instanceof h) {
            hVar = (h) eVar;
            int i8 = hVar.f4628M;
            if ((i8 & Integer.MIN_VALUE) != 0) {
                hVar.f4628M = i8 - Integer.MIN_VALUE;
            } else {
                hVar = new h(iVar, eVar);
            }
        } else {
            hVar = new h(iVar, eVar);
        }
        Object objK = hVar.f4626K;
        p192y6.a aVar = p192y6.a.f31454G;
        int i9 = hVar.f4628M;
        if (i9 == 0) {
            q0.H(objK);
            switch (((g) iVar).f4624b) {
                case 0:
                    q0.h(bVar, "request");
                    getTopicsRequestBuild = F.f().setAdsSdkName(bVar.f4617a).setShouldRecordObservation(bVar.f4618b).build();
                    q0.g(getTopicsRequestBuild, "Builder()\n            .s…ion)\n            .build()");
                    break;
                case 1:
                    q0.h(bVar, "request");
                    getTopicsRequestBuild = F.f().setAdsSdkName(bVar.f4617a).setShouldRecordObservation(bVar.f4618b).build();
                    q0.g(getTopicsRequestBuild, "Builder()\n            .s…ion)\n            .build()");
                    break;
                case 2:
                    q0.h(bVar, "request");
                    getTopicsRequestBuild = F.f().setAdsSdkName(bVar.f4617a).setShouldRecordObservation(bVar.f4618b).build();
                    q0.g(getTopicsRequestBuild, "Builder()\n            .s…ion)\n            .build()");
                    break;
                case 3:
                default:
                    q0.h(bVar, "request");
                    getTopicsRequestBuild = F.f().setAdsSdkName(bVar.f4617a).build();
                    q0.g(getTopicsRequestBuild, "Builder()\n            .s…ame)\n            .build()");
                    break;
                case 4:
                    q0.h(bVar, "request");
                    getTopicsRequestBuild = F.f().setAdsSdkName(bVar.f4617a).setShouldRecordObservation(bVar.f4618b).build();
                    q0.g(getTopicsRequestBuild, "Builder()\n            .s…ion)\n            .build()");
                    break;
            }
            hVar.f4625J = iVar;
            hVar.f4628M = 1;
            C0205d c0205d = new C0205d(S3.e.h(hVar));
            c0205d.l();
            iVar.f4629a.getTopics(getTopicsRequestBuild, new p093m.a(11), new J.d(c0205d));
            objK = c0205d.k();
            if (objK == aVar) {
                return aVar;
            }
        } else {
            if (i9 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            iVar = hVar.f4625J;
            q0.H(objK);
        }
        GetTopicsResponse getTopicsResponseC = d.c(objK);
        switch (((g) iVar).f4624b) {
            case 0:
                q0.h(getTopicsResponseC, "response");
                return e.a(getTopicsResponseC);
            case 1:
            default:
                q0.h(getTopicsResponseC, "response");
                ArrayList arrayList = new ArrayList();
                Iterator it = getTopicsResponseC.getTopics().iterator();
                while (it.hasNext()) {
                    Topic topicJ = F.j(it.next());
                    arrayList.add(new f(topicJ.getTopicId(), topicJ.getTaxonomyVersion(), topicJ.getModelVersion()));
                }
                return new c(arrayList);
            case 2:
                q0.h(getTopicsResponseC, "response");
                return e.a(getTopicsResponseC);
        }
    }

    public Object a(b bVar, p185x6.e eVar) {
        return b(this, bVar, eVar);
    }
}
