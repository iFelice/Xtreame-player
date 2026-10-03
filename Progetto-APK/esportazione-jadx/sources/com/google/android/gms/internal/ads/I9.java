package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class I9 implements InterfaceC2165vz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f13857b;

    public /* synthetic */ I9(String str, int i8) {
        this.f13856a = i8;
        this.f13857b = str;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x009a  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b2  */
    @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
    public final Object apply(Object obj) {
        String str;
        String str2;
        Uri uri;
        int i8 = this.f13856a;
        String strReplace = this.f13857b;
        switch (i8) {
            case 0:
                String str3 = (String) obj;
                H9 h9 = M9.f14657a;
                if (str3 != null) {
                    if (((Boolean) AbstractC1864q8.f20552f.l()).booleanValue()) {
                        String[] strArr = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
                        String host = Uri.parse(strReplace).getHost();
                        int i9 = 0;
                        while (true) {
                            if (i9 < 3) {
                                if (!host.endsWith(strArr[i9])) {
                                    i9++;
                                }
                            }
                        }
                        str = (String) AbstractC1864q8.f20547a.l();
                        str2 = (String) AbstractC1864q8.f20548b.l();
                        if (!TextUtils.isEmpty(str)) {
                            strReplace = strReplace.replace(str, str3);
                        }
                        if (!TextUtils.isEmpty(str2)) {
                            uri = Uri.parse(strReplace);
                            if (TextUtils.isEmpty(uri.getQueryParameter(str2))) {
                                return uri.buildUpon().appendQueryParameter(str2, str3).toString();
                            }
                        }
                    } else {
                        str = (String) AbstractC1864q8.f20547a.l();
                        str2 = (String) AbstractC1864q8.f20548b.l();
                        if (!TextUtils.isEmpty(str)) {
                            strReplace = strReplace.replace(str, str3);
                        }
                        if (!TextUtils.isEmpty(str2)) {
                            uri = Uri.parse(strReplace);
                            if (TextUtils.isEmpty(uri.getQueryParameter(str2))) {
                                return uri.buildUpon().appendQueryParameter(str2, str3).toString();
                            }
                        }
                    }
                }
                return strReplace;
            case 1:
                Throwable th = (Throwable) obj;
                H9 h10 = M9.f14657a;
                if (((Boolean) AbstractC1864q8.f20555i.l()).booleanValue()) {
                    p083k3.l.f25980A.f25987g.i("prepareClickUrl.attestation2", th);
                }
                return strReplace;
            case 2:
                return new C2204wm(strReplace, (K8) obj);
            default:
                p120p3.h.d("Error calling adapter: ".concat(String.valueOf(strReplace)));
                String strConcat = "rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(strReplace));
                p083k3.l.f25980A.f25987g.i(strConcat, (Throwable) obj);
                return null;
        }
    }
}
