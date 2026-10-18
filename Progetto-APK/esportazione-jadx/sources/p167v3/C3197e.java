package p167v3;

import D4.b;
import android.net.Uri;
import android.text.TextUtils;
import android.util.JsonReader;
import com.google.android.gms.internal.ads.C0973Wc;
import com.google.android.gms.internal.ads.C1326fp;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.InterfaceC2165vz;
import com.google.android.gms.internal.ads.RB;
import java.io.InputStreamReader;
import java.util.ArrayList;
import org.json.JSONException;
import p090l3.C3097p;

/* JADX INFO: renamed from: v3.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C3197e implements RB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f30612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f30613b;

    public /* synthetic */ C3197e(Object obj, int i8) {
        this.f30612a = i8;
        this.f30613b = obj;
    }

    @Override // com.google.android.gms.internal.ads.RB
    public final b zza(Object obj) {
        int i8 = this.f30612a;
        Object obj2 = this.f30613b;
        switch (i8) {
            case 0:
                j jVar = (j) obj2;
                final Uri uri = (Uri) obj;
                return Cw.b2(jVar.A3("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new InterfaceC2165vz() { // from class: v3.f
                    @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
                    public final Object apply(Object obj3) {
                        String str = (String) obj3;
                        boolean zIsEmpty = TextUtils.isEmpty(str);
                        Uri uri2 = uri;
                        return !zIsEmpty ? j.G3(uri2, "nas", str) : uri2;
                    }
                }, jVar.f30629M);
            case 1:
                final j jVar2 = (j) obj2;
                final ArrayList arrayList = (ArrayList) obj;
                return Cw.b2(jVar2.A3("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new InterfaceC2165vz() { // from class: v3.G
                    @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
                    public final Object apply(Object obj3) {
                        String str = (String) obj3;
                        j jVar3 = jVar2;
                        jVar3.getClass();
                        ArrayList arrayList2 = new ArrayList();
                        for (Uri uri2 : arrayList) {
                            if (!j.F3(uri2, jVar3.f30648f0, jVar3.f30649g0) || TextUtils.isEmpty(str)) {
                                arrayList2.add(uri2);
                            } else {
                                arrayList2.add(j.G3(uri2, "nas", str));
                            }
                        }
                        return arrayList2;
                    }
                }, jVar2.f30629M);
            default:
                C1326fp c1326fp = (C1326fp) obj;
                r rVar = new r(new JsonReader(new InputStreamReader(c1326fp.f18807a)), c1326fp.f18808b);
                try {
                    rVar.f30682b = C3097p.f26618f.f26619a.h(((C0973Wc) obj2).f17250G).toString();
                    break;
                } catch (JSONException unused) {
                    rVar.f30682b = "{}";
                }
                return Cw.N1(rVar);
        }
    }
}
