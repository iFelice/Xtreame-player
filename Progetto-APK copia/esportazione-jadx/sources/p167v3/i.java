package p167v3;

import android.net.Uri;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.C1488ix;
import com.google.android.gms.internal.ads.C1883qc;
import com.google.android.gms.internal.ads.InterfaceC1195dC;
import com.google.android.gms.internal.ads.InterfaceC1986sc;
import com.google.android.gms.internal.ads.Q7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.HttpUrl;
import p090l3.C3099q;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class i implements InterfaceC1195dC {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f30616G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1986sc f30617H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ boolean f30618I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ j f30619J;

    public /* synthetic */ i(j jVar, InterfaceC1986sc interfaceC1986sc, boolean z7, int i8) {
        this.f30616G = i8;
        this.f30617H = interfaceC1986sc;
        this.f30618I = z7;
        this.f30619J = jVar;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        int i8 = this.f30616G;
        InterfaceC1986sc interfaceC1986sc = this.f30617H;
        switch (i8) {
            case 0:
                try {
                    String str = "Internal error: " + th.getMessage();
                    C1883qc c1883qc = (C1883qc) interfaceC1986sc;
                    Parcel parcelJ0 = c1883qc.j0();
                    parcelJ0.writeString(str);
                    c1883qc.O2(2, parcelJ0);
                } catch (RemoteException e8) {
                    h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                    return;
                }
                break;
            default:
                try {
                    String str2 = "Internal error: " + th.getMessage();
                    C1883qc c1883qc2 = (C1883qc) interfaceC1986sc;
                    Parcel parcelJ1 = c1883qc2.j0();
                    parcelJ1.writeString(str2);
                    c1883qc2.O2(2, parcelJ1);
                } catch (RemoteException e9) {
                    h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004e A[Catch: RemoteException -> 0x006e, TRY_LEAVE, TryCatch #1 {RemoteException -> 0x006e, blocks: (B:5:0x0013, B:6:0x0017, B:8:0x001d, B:10:0x002d, B:11:0x0032, B:14:0x0044, B:15:0x0048, B:17:0x004e, B:20:0x0060, B:23:0x0070, B:25:0x0082), top: B:50:0x0013 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0070 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0048 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        boolean zF3;
        C1488ix c1488ix;
        int i8 = this.f30616G;
        boolean z7 = this.f30618I;
        InterfaceC1986sc interfaceC1986sc = this.f30617H;
        j jVar = this.f30619J;
        switch (i8) {
            case 0:
                ArrayList<Uri> arrayList = (ArrayList) obj;
                try {
                    C1883qc c1883qc = (C1883qc) interfaceC1986sc;
                    Parcel parcelJ0 = c1883qc.j0();
                    parcelJ0.writeTypedList(arrayList);
                    c1883qc.O2(1, parcelJ0);
                    if (jVar.f30636T || z7) {
                        for (Uri uri : arrayList) {
                            boolean zF4 = j.F3(uri, jVar.f30648f0, jVar.f30649g0);
                            C1488ix c1488ix2 = jVar.f30635S;
                            if (zF4) {
                                c1488ix2.a(j.G3(uri, jVar.f30645c0, "1").toString(), null);
                            } else {
                                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15715R6)).booleanValue()) {
                                    c1488ix2.a(uri.toString(), null);
                                }
                            }
                        }
                    }
                } catch (RemoteException e8) {
                    h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                    return;
                }
                break;
            default:
                List<Uri> list = (List) obj;
                try {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (j.F3((Uri) it.next(), jVar.f30646d0, jVar.f30647e0)) {
                            jVar.f30642Z.getAndIncrement();
                            C1883qc c1883qc2 = (C1883qc) interfaceC1986sc;
                            Parcel parcelJ1 = c1883qc2.j0();
                            parcelJ1.writeTypedList(list);
                            c1883qc2.O2(1, parcelJ1);
                            if (!jVar.f30637U || z7) {
                                for (Uri uri2 : list) {
                                    zF3 = j.F3(uri2, jVar.f30646d0, jVar.f30647e0);
                                    c1488ix = jVar.f30635S;
                                    if (zF3) {
                                        c1488ix.a(j.G3(uri2, jVar.f30645c0, "1").toString(), null);
                                    } else {
                                        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15715R6)).booleanValue()) {
                                            c1488ix.a(uri2.toString(), null);
                                        }
                                    }
                                }
                            }
                            break;
                        }
                    }
                    C1883qc c1883qc3 = (C1883qc) interfaceC1986sc;
                    Parcel parcelJ2 = c1883qc3.j0();
                    parcelJ2.writeTypedList(list);
                    c1883qc3.O2(1, parcelJ2);
                    if (!jVar.f30637U) {
                    }
                    while (r12.hasNext()) {
                        zF3 = j.F3(uri2, jVar.f30646d0, jVar.f30647e0);
                        c1488ix = jVar.f30635S;
                        if (zF3) {
                            c1488ix.a(j.G3(uri2, jVar.f30645c0, "1").toString(), null);
                        } else {
                            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15715R6)).booleanValue()) {
                                c1488ix.a(uri2.toString(), null);
                            }
                        }
                    }
                } catch (RemoteException e9) {
                    h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
                }
                break;
        }
    }
}
