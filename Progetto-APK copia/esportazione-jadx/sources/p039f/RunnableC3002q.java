package p039f;

import B0.M0;
import D.f;
import J.g;
import J.j;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import java.lang.ref.WeakReference;
import p132r.b;

/* JADX INFO: renamed from: f.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3002q implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25106G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Context f25107H;

    public /* synthetic */ RunnableC3002q(Context context, int i8) {
        this.f25106G = i8;
        this.f25107H = context;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x010e  */
    @Override // java.lang.Runnable
    public final void run() {
        g gVar;
        Object systemService;
        Context context;
        int i8 = this.f25106G;
        Context context2 = this.f25107H;
        switch (i8) {
            case 0:
                int i9 = Build.VERSION.SDK_INT;
                if (i9 >= 33) {
                    ComponentName componentName = new ComponentName(context2, "androidx.appcompat.app.AppLocalesMetadataHolderService");
                    if (context2.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                        if (i9 >= 33) {
                            p132r.g gVar2 = AbstractC3007w.f25123M;
                            gVar2.getClass();
                            b bVar = new b(gVar2);
                            while (true) {
                                if (bVar.hasNext()) {
                                    AbstractC3007w abstractC3007w = (AbstractC3007w) ((WeakReference) bVar.next()).get();
                                    if (abstractC3007w != null && (context = ((K) abstractC3007w).f24942Q) != null) {
                                        systemService = context.getSystemService("locale");
                                    }
                                } else {
                                    systemService = null;
                                }
                            }
                            if (systemService != null) {
                                gVar = new g(new j(AbstractC3003s.a(systemService)));
                            } else {
                                gVar = g.f4052b;
                            }
                        } else {
                            gVar = AbstractC3007w.f25119I;
                            if (gVar == null) {
                                gVar = g.f4052b;
                            }
                        }
                        if (gVar.f4053a.isEmpty()) {
                            String strB = f.b(context2);
                            Object systemService2 = context2.getSystemService("locale");
                            if (systemService2 != null) {
                                AbstractC3003s.b(systemService2, r.a(strB));
                            }
                        }
                        context2.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                    }
                }
                AbstractC3007w.f25122L = true;
                break;
            case 1:
                if (!i7.b.f25586b.isConnected()) {
                    Log.d("XCIPTV_TAG", "Client is disconnected--------------------------");
                    Log.d("XCIPTV_TAG", "Connection Trying.....connect called");
                    new Thread(new M0(context2, false)).start();
                } else {
                    Log.d("XCIPTV_TAG", "Client is connected-----------------------------");
                    i7.b.e(i7.b.f25591g + ":" + i7.b.f25592h + "---" + i7.b.c(context2), "client/status/android");
                }
                break;
            case 2:
                String str = i7.b.f25585a;
                Intent launchIntentForPackage = context2.getPackageManager().getLaunchIntentForPackage(context2.getPackageName());
                launchIntentForPackage.addFlags(67108864);
                launchIntentForPackage.addFlags(268435456);
                context2.startActivity(launchIntentForPackage);
                System.exit(0);
                break;
            case 3:
                String str2 = i7.b.f25585a;
                Intent launchIntentForPackage2 = context2.getPackageManager().getLaunchIntentForPackage(context2.getPackageName());
                launchIntentForPackage2.addFlags(67108864);
                launchIntentForPackage2.addFlags(268435456);
                context2.startActivity(launchIntentForPackage2);
                System.exit(0);
                break;
            case 4:
                String str3 = i7.b.f25585a;
                Intent launchIntentForPackage3 = context2.getPackageManager().getLaunchIntentForPackage(context2.getPackageName());
                launchIntentForPackage3.addFlags(67108864);
                launchIntentForPackage3.addFlags(268435456);
                context2.startActivity(launchIntentForPackage3);
                System.exit(0);
                break;
            default:
                l7.g.a(context2);
                break;
        }
    }
}
