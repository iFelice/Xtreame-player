package H3;

import A0.O;
import C3.C0105e;
import K3.InterfaceC0232e;
import K3.InterfaceC0239l;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.internal.C0633i;
import com.google.android.gms.common.internal.C0645v;
import com.google.android.gms.internal.pal.C2830u2;

/* JADX INFO: loaded from: classes.dex */
public final class r extends com.google.android.gms.common.api.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3724a;

    public r(int i8) {
        this.f3724a = i8;
    }

    @Override // com.google.android.gms.common.api.a
    public final com.google.android.gms.common.api.e buildClient(Context context, Looper looper, C0633i c0633i, Object obj, InterfaceC0232e interfaceC0232e, InterfaceC0239l interfaceC0239l) {
        switch (this.f3724a) {
            case 3:
                return new N3.c(context, looper, c0633i, (C0645v) obj, interfaceC0232e, interfaceC0239l);
            case 4:
                return new W3.b(context, looper, 300, c0633i, interfaceC0232e, interfaceC0239l);
            default:
                return super.buildClient(context, looper, c0633i, obj, interfaceC0232e, interfaceC0239l);
        }
    }

    @Override // com.google.android.gms.common.api.a
    public final com.google.android.gms.common.api.e buildClient(Context context, Looper looper, C0633i c0633i, Object obj, com.google.android.gms.common.api.k kVar, com.google.android.gms.common.api.l lVar) {
        switch (this.f3724a) {
            case 0:
                return new u(context, looper, 161, c0633i, kVar, lVar);
            case 1:
                C0105e c0105e = (C0105e) obj;
                com.bumptech.glide.c.i(c0105e, "Setting the API options is required.");
                return new y(context, looper, c0633i, c0105e.f1505b, c0105e.f1508e, c0105e.f1507d, c0105e.f1509f, kVar, lVar);
            case 2:
                C0105e c0105e2 = (C0105e) obj;
                com.bumptech.glide.c.i(c0105e2, "Setting the API options is required.");
                return new x(context, looper, c0633i, c0105e2.f1505b, c0105e2.f1508e, c0105e2.f1506c, c0105e2.f1507d, kVar, lVar);
            case 3:
            case 4:
            default:
                return buildClient(context, looper, c0633i, obj, (InterfaceC0232e) kVar, (InterfaceC0239l) lVar);
            case 5:
                return new C2830u2(context, looper, 203, c0633i, kVar, lVar);
            case 6:
                Integer num = c0633i.f11852i;
                Bundle bundle = new Bundle();
                bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", c0633i.f11844a);
                if (num != null) {
                    bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", num.intValue());
                }
                bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
                bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
                bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
                bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
                bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
                bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
                bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
                bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
                return new p044f4.a(context, looper, c0633i, bundle, kVar, lVar);
            case 7:
                O.H((com.google.android.gms.common.api.c) obj);
                throw null;
        }
    }
}
