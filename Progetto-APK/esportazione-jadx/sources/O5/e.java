package O5;

import android.graphics.Rect;
import android.util.Log;
import com.journeyapps.barcodescanner.ViewfinderView;
import java.util.Iterator;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5576b;

    public /* synthetic */ e(Object obj, int i8) {
        this.f5575a = i8;
        this.f5576b = obj;
    }

    public final void a() {
        int i8 = this.f5575a;
        Object obj = this.f5576b;
        switch (i8) {
            case 0:
                Iterator it = ((g) obj).f5587P.iterator();
                while (it.hasNext()) {
                    ((e) ((f) it.next())).a();
                }
                break;
            case 1:
                k kVar = (k) obj;
                if (kVar.f5619k) {
                    Log.d("k", "Camera closed; finishing activity");
                    kVar.f5609a.finish();
                }
                break;
        }
    }

    public final void b(Exception exc) {
        int i8 = this.f5575a;
        Object obj = this.f5576b;
        switch (i8) {
            case 0:
                Iterator it = ((g) obj).f5587P.iterator();
                while (it.hasNext()) {
                    ((e) ((f) it.next())).b(exc);
                }
                break;
            case 1:
                k kVar = (k) obj;
                kVar.b(kVar.f5609a.getString(R.string.zxing_msg_camera_framework_bug));
                break;
        }
    }

    public final void c() {
        int i8 = this.f5575a;
        Object obj = this.f5576b;
        switch (i8) {
            case 0:
                Iterator it = ((g) obj).f5587P.iterator();
                while (it.hasNext()) {
                    ((e) ((f) it.next())).c();
                }
                break;
            case 1:
                break;
            default:
                ViewfinderView viewfinderView = (ViewfinderView) obj;
                g gVar = viewfinderView.f24577O;
                if (gVar != null) {
                    Rect framingRect = gVar.getFramingRect();
                    t previewSize = viewfinderView.f24577O.getPreviewSize();
                    if (framingRect != null && previewSize != null) {
                        viewfinderView.f24578P = framingRect;
                        viewfinderView.f24579Q = previewSize;
                    }
                }
                viewfinderView.invalidate();
                break;
        }
    }

    public final void d() {
        switch (this.f5575a) {
            case 0:
                Iterator it = ((g) this.f5576b).f5587P.iterator();
                while (it.hasNext()) {
                    ((e) ((f) it.next())).d();
                }
                break;
        }
    }

    public final void e() {
        switch (this.f5575a) {
            case 0:
                Iterator it = ((g) this.f5576b).f5587P.iterator();
                while (it.hasNext()) {
                    ((e) ((f) it.next())).e();
                }
                break;
        }
    }
}
