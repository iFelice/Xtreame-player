package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.function.Consumer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1388gz implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19038b;

    public /* synthetic */ C1388gz(Object obj, int i8) {
        this.f19037a = i8;
        this.f19038b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f19037a) {
            case 0:
                J j8 = C1542jz.f19538c;
                ((Bundle) this.f19038b).putString("sessionToken", (String) obj);
                break;
            case 1:
                J j9 = C1542jz.f19538c;
                ((Bundle) this.f19038b).putString("deeplinkUrl", (String) obj);
                break;
            case 2:
                J j10 = C1542jz.f19538c;
                ((Bundle) this.f19038b).putString("sessionToken", (String) obj);
                break;
            case 3:
                J j11 = C1542jz.f19538c;
                ((Bundle) this.f19038b).putString("appId", (String) obj);
                break;
            case 4:
                J j12 = C1542jz.f19538c;
                ((Bundle) this.f19038b).putString("thirdPartyAuthCallerId", (String) obj);
                break;
            case 5:
                J j13 = C1542jz.f19538c;
                ((Bundle) this.f19038b).putString("appId", (String) obj);
                break;
            case 6:
                J j14 = C1542jz.f19538c;
                ((Bundle) this.f19038b).putString("sessionToken", (String) obj);
                break;
            case 7:
                J j15 = C1542jz.f19538c;
                ((Bundle) this.f19038b).putString("appId", (String) obj);
                break;
            case 8:
                J j16 = C1542jz.f19538c;
                ((Bundle) this.f19038b).putString("adFieldEnifd", (String) obj);
                break;
            default:
                Bundle bundle = new Bundle();
                bundle.putString("mediaUrl", (String) obj);
                ((C0943Ua) this.f19038b).f16843G.b(bundle);
                break;
        }
    }
}
