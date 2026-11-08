package p044f4;

import J3.b;
import K3.N;
import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.k;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.internal.AbstractC0631g;
import com.google.android.gms.common.internal.AbstractC0636l;
import com.google.android.gms.common.internal.C;
import com.google.android.gms.common.internal.C0629e;
import com.google.android.gms.common.internal.C0633i;
import org.json.JSONException;
import p036e4.c;
import p039f.AbstractC2987b;
import p086l.RunnableC3036k;

/* JADX INFO: loaded from: classes.dex */
public final class a extends AbstractC0636l implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f25202a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0633i f25203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f25204c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Integer f25205d;

    public a(Context context, Looper looper, C0633i c0633i, Bundle bundle, k kVar, l lVar) {
        super(context, looper, 44, c0633i, kVar, lVar);
        this.f25202a = true;
        this.f25203b = c0633i;
        this.f25204c = bundle;
        this.f25205d = c0633i.f11852i;
    }

    @Override // p036e4.c
    public final void a(e eVar) {
        GoogleSignInAccount googleSignInAccountI;
        com.bumptech.glide.c.i(eVar, "Expecting a valid ISignInCallbacks");
        try {
            Account account = this.f25203b.f11844a;
            if (account == null) {
                account = new Account(AbstractC0631g.DEFAULT_ACCOUNT, "com.google");
            }
            if (AbstractC0631g.DEFAULT_ACCOUNT.equals(account.name)) {
                B3.a aVarA = B3.a.a(getContext());
                String strB = aVarA.b("defaultGoogleSignInAccount");
                if (!TextUtils.isEmpty(strB)) {
                    String strB2 = aVarA.b("googleSignInAccount:" + strB);
                    if (strB2 != null) {
                        try {
                            googleSignInAccountI = GoogleSignInAccount.i(strB2);
                        } catch (JSONException unused) {
                            googleSignInAccountI = null;
                        }
                    }
                }
                googleSignInAccountI = null;
            } else {
                googleSignInAccountI = null;
            }
            Integer num = this.f25205d;
            com.bumptech.glide.c.h(num);
            C c8 = new C(2, account, num.intValue(), googleSignInAccountI);
            f fVar = (f) getService();
            fVar.getClass();
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.writeInterfaceToken(fVar.f21993I);
            int i8 = X3.a.f7655a;
            parcelObtain.writeInt(1);
            int iX = AbstractC2987b.X(20293, parcelObtain);
            AbstractC2987b.v0(parcelObtain, 1, 4);
            parcelObtain.writeInt(1);
            AbstractC2987b.P(parcelObtain, 2, c8, 0);
            AbstractC2987b.p0(iX, parcelObtain);
            parcelObtain.writeStrongBinder((d) eVar);
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                fVar.f21992H.transact(12, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        } catch (RemoteException e8) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                N n7 = (N) eVar;
                n7.f4503H.post(new RunnableC3036k(29, n7, new i(1, new b(8, null), null)));
            } catch (RemoteException unused2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e8);
            }
        }
    }

    @Override // p036e4.c
    public final void b() {
        connect(new C0629e(this));
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof f ? (f) iInterfaceQueryLocalInterface : new f(iBinder, "com.google.android.gms.signin.internal.ISignInService", 1);
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final Bundle getGetServiceRequestExtraArgs() {
        C0633i c0633i = this.f25203b;
        boolean zEquals = getContext().getPackageName().equals(c0633i.f11849f);
        Bundle bundle = this.f25204c;
        if (!zEquals) {
            bundle.putString("com.google.android.gms.signin.internal.realClientPackageName", c0633i.f11849f);
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getServiceDescriptor() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getStartServiceAction() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final boolean requiresSignIn() {
        return this.f25202a;
    }
}
