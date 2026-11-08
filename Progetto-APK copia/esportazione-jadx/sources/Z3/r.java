package Z3;

import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8379G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0440w f8380H;

    public /* synthetic */ r(C0440w c0440w, int i8) {
        this.f8379G = i8;
        this.f8380H = c0440w;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strConcat;
        int i8 = this.f8379G;
        C0440w c0440w = this.f8380H;
        switch (i8) {
            case 0:
                c0440w.getClass();
                c0440w.f8395d.execute(new r(c0440w, 1));
                break;
            default:
                JSONObject jSONObject = new JSONObject();
                Application application = c0440w.f8392a;
                try {
                    jSONObject.put("app_name", application.getPackageManager().getApplicationLabel(application.getApplicationInfo()).toString());
                    Drawable applicationIcon = application.getPackageManager().getApplicationIcon(application.getApplicationInfo());
                    if (applicationIcon == null) {
                        strConcat = null;
                    } else {
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(bitmapCreateBitmap);
                        applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                        applicationIcon.draw(canvas);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                        strConcat = "data:image/png;base64,".concat(String.valueOf(Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2)));
                    }
                    jSONObject.put("app_icon", strConcat);
                    JSONObject jSONObject2 = new JSONObject();
                    C0427i c0427i = c0440w.f8399h;
                    for (String str : c0427i.a().keySet()) {
                        jSONObject2.put(str, c0427i.a().get(str));
                    }
                    jSONObject.put("stored_infos_map", jSONObject2);
                    break;
                } catch (JSONException unused) {
                }
                c0440w.f8398g.f8360g.a("UMP_configureFormWithAppAssets", jSONObject.toString());
                break;
        }
    }
}
