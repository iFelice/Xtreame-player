package O5;

import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5603G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ k f5604H;

    public /* synthetic */ h(k kVar, int i8) {
        this.f5603G = i8;
        this.f5604H = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f5603G;
        k kVar = this.f5604H;
        kVar.getClass();
        switch (i8) {
            case 0:
                Log.d("k", "Finishing due to inactivity");
                kVar.f5609a.finish();
                break;
            default:
                Intent intent = new Intent("com.google.zxing.client.android.SCAN");
                intent.putExtra("TIMEOUT", true);
                kVar.f5609a.setResult(0, intent);
                kVar.a();
                break;
        }
    }
}
