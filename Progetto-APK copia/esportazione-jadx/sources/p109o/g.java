package p109o;

import U4.b;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.support.customtabs.ICustomTabsCallback;
import android.text.TextUtils;
import p096m2.l;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Intent f27588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f27589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f27590c;

    public g() {
        this.f27588a = new Intent("android.intent.action.VIEW");
        this.f27589b = new b();
        this.f27590c = true;
    }

    public final l a() {
        Intent intent = this.f27588a;
        Object obj = null;
        if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", null);
            intent.putExtras(bundle);
        }
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f27590c);
        b bVar = this.f27589b;
        bVar.getClass();
        bVar.getClass();
        bVar.getClass();
        bVar.getClass();
        intent.putExtras(new Bundle());
        intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        if (Build.VERSION.SDK_INT >= 24) {
            String strA = f.a();
            if (!TextUtils.isEmpty(strA)) {
                Bundle bundleExtra = intent.hasExtra("com.android.browser.headers") ? intent.getBundleExtra("com.android.browser.headers") : new Bundle();
                if (!bundleExtra.containsKey("Accept-Language")) {
                    bundleExtra.putString("Accept-Language", strA);
                    intent.putExtra("com.android.browser.headers", bundleExtra);
                }
            }
        }
        return new l(1, intent, obj);
    }

    public g(j jVar) {
        Intent intent = new Intent("android.intent.action.VIEW");
        this.f27588a = intent;
        this.f27589b = new b();
        this.f27590c = true;
        if (jVar != null) {
            intent.setPackage(((ComponentName) jVar.f27595J).getPackageName());
            IBinder iBinderAsBinder = ((ICustomTabsCallback) jVar.f27594I).asBinder();
            PendingIntent pendingIntent = (PendingIntent) jVar.f27596K;
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", iBinderAsBinder);
            if (pendingIntent != null) {
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
            }
            intent.putExtras(bundle);
        }
    }
}
