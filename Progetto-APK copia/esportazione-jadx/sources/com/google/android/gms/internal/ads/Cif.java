package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.if, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class Cif implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f19305G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f19306H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f19307I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f19308J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f19309K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Object f19310L;

    public Cif(AbstractC1522jf abstractC1522jf, String str, String str2, String str3, String str4) {
        this.f19306H = str;
        this.f19307I = str2;
        this.f19308J = str3;
        this.f19309K = str4;
        this.f19310L = abstractC1522jf;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:65:0x00fd  */
    @Override // java.lang.Runnable
    public final void run() {
        String str;
        int i8 = this.f19305G;
        byte b8 = 3;
        Object obj = this.f19310L;
        Object obj2 = this.f19309K;
        Object obj3 = this.f19308J;
        String str2 = this.f19306H;
        Object obj4 = this.f19307I;
        switch (i8) {
            case 0:
                HashMap mapM = p000a.r.m("event", "precacheCanceled", "src", str2);
                String str3 = (String) obj4;
                if (!TextUtils.isEmpty(str3)) {
                    mapM.put("cachedSrc", str3);
                }
                String str4 = (String) obj3;
                switch (str4.hashCode()) {
                    case -1947652542:
                        if (!str4.equals("interrupted")) {
                            b8 = -1;
                        }
                        break;
                    case -1396664534:
                        if (!str4.equals("badUrl")) {
                            b8 = -1;
                        } else {
                            b8 = 8;
                        }
                        break;
                    case -1347010958:
                        if (!str4.equals("inProgress")) {
                            b8 = -1;
                        } else {
                            b8 = 2;
                        }
                        break;
                    case -918817863:
                        if (!str4.equals("downloadTimeout")) {
                            b8 = -1;
                        } else {
                            b8 = 9;
                        }
                        break;
                    case -659376217:
                        if (!str4.equals("contentLengthMissing")) {
                            b8 = -1;
                        } else {
                            b8 = 0;
                        }
                        break;
                    case -642208130:
                        if (!str4.equals("playerFailed")) {
                            b8 = -1;
                        } else {
                            b8 = 5;
                        }
                        break;
                    case -354048396:
                        if (!str4.equals("sizeExceeded")) {
                            b8 = -1;
                        } else {
                            b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                        }
                        break;
                    case -32082395:
                        if (!str4.equals("externalAbort")) {
                            b8 = -1;
                        } else {
                            b8 = 10;
                        }
                        break;
                    case 3387234:
                        if (!str4.equals("noop")) {
                            b8 = -1;
                        } else {
                            b8 = 4;
                        }
                        break;
                    case 96784904:
                        if (!str4.equals("error")) {
                            b8 = -1;
                        } else {
                            b8 = 1;
                        }
                        break;
                    case 580119100:
                        if (!str4.equals("expireFailed")) {
                            b8 = -1;
                        } else {
                            b8 = 6;
                        }
                        break;
                    case 725497484:
                        if (!str4.equals("noCacheDir")) {
                            b8 = -1;
                        } else {
                            b8 = 7;
                        }
                        break;
                    default:
                        b8 = -1;
                        break;
                }
                switch (b8) {
                    case 6:
                    case 7:
                        str = "io";
                        break;
                    case 8:
                    case 9:
                        str = "network";
                        break;
                    case 10:
                    case 11:
                        str = "policy";
                        break;
                    default:
                        str = "internal";
                        break;
                }
                mapM.put("type", str);
                mapM.put("reason", str4);
                String str5 = (String) obj2;
                if (!TextUtils.isEmpty(str5)) {
                    mapM.put("message", str5);
                }
                AbstractC1522jf.k((AbstractC1522jf) obj, mapM);
                return;
            default:
                C1273eo c1273eo = (C1273eo) obj4;
                InterfaceC1415ha interfaceC1415ha = (InterfaceC1415ha) obj3;
                C1385gw c1385gw = (C1385gw) obj2;
                List list = (List) obj;
                c1273eo.getClass();
                try {
                    try {
                        if (Objects.equals(str2, "com.google.ads.mediation.admob.AdMobAdapter")) {
                            interfaceC1415ha.a();
                            return;
                        }
                        Context context = (Context) c1273eo.f18593g.get();
                        if (context == null) {
                            context = c1273eo.f18592f;
                        }
                        c1385gw.b(context, interfaceC1415ha, list);
                        return;
                    } catch (RemoteException e8) {
                        throw new Y.r(3, (Throwable) e8);
                    } catch (C1075aw unused) {
                        interfaceC1415ha.o("Failed to initialize adapter. " + str2 + " does not implement the initialize() method.");
                        return;
                    }
                } catch (RemoteException e9) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
                    return;
                }
        }
    }

    public /* synthetic */ Cif(C1273eo c1273eo, String str, Cdo cdo, C1385gw c1385gw, ArrayList arrayList) {
        this.f19307I = c1273eo;
        this.f19306H = str;
        this.f19308J = cdo;
        this.f19309K = c1385gw;
        this.f19310L = arrayList;
    }
}
