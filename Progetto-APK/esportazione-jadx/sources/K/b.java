package K;

import D1.J;
import R0.p;
import R0.q;
import com.google.internal.firebase.inappmessaging.v1.CampaignProto$ThickContent;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import p094m0.C3136t;
import z4.C3257v;
import z4.c0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Comparator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4267G;

    public /* synthetic */ b(int i8) {
        this.f4267G = i8;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f4267G) {
            case 0:
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                if (bArr.length != bArr2.length) {
                    return bArr.length - bArr2.length;
                }
                for (int i8 = 0; i8 < bArr.length; i8++) {
                    byte b8 = bArr[i8];
                    byte b9 = bArr2[i8];
                    if (b8 != b9) {
                        return b8 - b9;
                    }
                }
                return 0;
            case 1:
                F0.b bVar = (F0.b) obj;
                F0.b bVar2 = (F0.b) obj2;
                int iCompare = Integer.compare(bVar.f3012c, bVar2.f3012c);
                return iCompare != 0 ? iCompare : bVar.f3011b.compareTo(bVar2.f3011b);
            case 2:
                return ((I0.d) obj).f3817a.compareTo(((I0.d) obj2).f3817a);
            case 3:
                return ((C3136t) obj2).f27036j - ((C3136t) obj).f27036j;
            case 4:
                Integer num = (Integer) obj;
                Integer num2 = (Integer) obj2;
                c0 c0Var = q.f6232k;
                if (num.intValue() == -1) {
                    return num2.intValue() == -1 ? 0 : -1;
                }
                if (num2.intValue() == -1) {
                    return 1;
                }
                return num.intValue() - num2.intValue();
            case 5:
                return Integer.compare(((R0.h) ((List) obj).get(0)).f6162L, ((R0.h) ((List) obj2).get(0)).f6162L);
            case 6:
                List list = (List) obj;
                List list2 = (List) obj2;
                return C3257v.f(new b(11).compare((p) Collections.max(list, new b(9)), (p) Collections.max(list2, new b(10)))).a(list.size(), list2.size()).b((p) Collections.max(list, new b(12)), (p) Collections.max(list2, new b(13)), new b(14)).e();
            case 7:
                return ((R0.g) Collections.max((List) obj)).compareTo((R0.g) Collections.max((List) obj2));
            case 8:
                return ((R0.m) ((List) obj).get(0)).compareTo((R0.m) ((List) obj2).get(0));
            case 9:
                return p.d((p) obj, (p) obj2);
            case 10:
                return p.d((p) obj, (p) obj2);
            case 11:
                return p.d((p) obj, (p) obj2);
            case 12:
                return p.c((p) obj, (p) obj2);
            case 13:
                return p.c((p) obj, (p) obj2);
            case 14:
                return p.c((p) obj, (p) obj2);
            case 15:
                return ((S0.q) obj).f6375a - ((S0.q) obj2).f6375a;
            case 16:
                return Float.compare(((S0.q) obj).f6377c, ((S0.q) obj2).f6377c);
            case 17:
            default:
                CampaignProto$ThickContent campaignProto$ThickContent = (CampaignProto$ThickContent) obj;
                CampaignProto$ThickContent campaignProto$ThickContent2 = (CampaignProto$ThickContent) obj2;
                if (campaignProto$ThickContent.getIsTestCampaign() && !campaignProto$ThickContent2.getIsTestCampaign()) {
                    return -1;
                }
                if (!campaignProto$ThickContent2.getIsTestCampaign() || campaignProto$ThickContent.getIsTestCampaign()) {
                    return Integer.compare(campaignProto$ThickContent.getPriority().getValue(), campaignProto$ThickContent2.getPriority().getValue());
                }
                return 1;
            case 18:
                return Integer.compare(((p134r1.d) obj2).f29730b, ((p134r1.d) obj).f29730b);
            case 19:
                return Integer.compare(((p195z1.d) obj).f31726a.f31729b, ((p195z1.d) obj2).f31726a.f31729b);
            case 20:
                return Long.compare(((p195z1.c) obj).f31723b, ((p195z1.c) obj2).f31723b);
            case 21:
                J j8 = (J) obj;
                J j9 = (J) obj2;
                int iCompare2 = Integer.compare(j9.f2072b, j8.f2072b);
                if (iCompare2 != 0) {
                    return iCompare2;
                }
                int iCompareTo = j8.f2073c.compareTo(j9.f2073c);
                return iCompareTo != 0 ? iCompareTo : j8.f2074d.compareTo(j9.f2074d);
            case 22:
                J j10 = (J) obj;
                J j11 = (J) obj2;
                int iCompare3 = Integer.compare(j11.f2071a, j10.f2071a);
                if (iCompare3 != 0) {
                    return iCompare3;
                }
                int iCompareTo2 = j11.f2073c.compareTo(j10.f2073c);
                return iCompareTo2 != 0 ? iCompareTo2 : j11.f2074d.compareTo(j10.f2074d);
        }
    }
}
