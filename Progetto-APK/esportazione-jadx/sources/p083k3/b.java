package p083k3;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.C0728Fd;
import com.google.android.gms.internal.ads.C0772Ic;
import com.google.android.gms.internal.ads.InterfaceC0758Hd;
import java.util.Collections;
import java.util.List;
import okhttp3.HttpUrl;
import p113o3.O;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f25935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f25936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC0758Hd f25937c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0772Ic f25938d = new C0772Ic(Collections.emptyList(), false);

    public b(Context context, InterfaceC0758Hd interfaceC0758Hd) {
        this.f25935a = context;
        this.f25937c = interfaceC0758Hd;
    }

    public final void a(String str) {
        List<String> list;
        C0772Ic c0772Ic = this.f25938d;
        InterfaceC0758Hd interfaceC0758Hd = this.f25937c;
        if ((interfaceC0758Hd == null || !((C0728Fd) interfaceC0758Hd).f13375g.f13566L) && !c0772Ic.f13884G) {
            return;
        }
        if (str == null) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (interfaceC0758Hd != null) {
            ((C0728Fd) interfaceC0758Hd).a(str, null, 3);
            return;
        }
        if (!c0772Ic.f13884G || (list = c0772Ic.f13885H) == null) {
            return;
        }
        for (String str2 : list) {
            if (!TextUtils.isEmpty(str2)) {
                String strReplace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                O o4 = l.f25980A.f25983c;
                O.j(this.f25935a, HttpUrl.FRAGMENT_ENCODE_SET, strReplace);
            }
        }
    }

    public final boolean b() {
        InterfaceC0758Hd interfaceC0758Hd = this.f25937c;
        return ((interfaceC0758Hd == null || !((C0728Fd) interfaceC0758Hd).f13375g.f13566L) && !this.f25938d.f13884G) || this.f25936b;
    }
}
