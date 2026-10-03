package p086l;

import W4.c;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.H4;
import p083k3.k;
import pe.hf.black20.CatchupPlayerActivity;
import pe.hf.black20.PlayStreamEPGActivity;

/* JADX INFO: loaded from: classes.dex */
public final class L0 implements View.OnTouchListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26124G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f26125H;

    public /* synthetic */ L0(Object obj, int i8) {
        this.f26124G = i8;
        this.f26125H = obj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        M0 m7;
        G g8;
        int i8 = this.f26124G;
        Object obj = this.f26125H;
        switch (i8) {
            case 0:
                int action = motionEvent.getAction();
                int x7 = (int) motionEvent.getX();
                int y7 = (int) motionEvent.getY();
                if (action == 0 && (g8 = (m7 = (M0) obj).f26154e0) != null && g8.isShowing() && x7 >= 0 && x7 < m7.f26154e0.getWidth() && y7 >= 0 && y7 < m7.f26154e0.getHeight()) {
                    m7.f26150a0.postDelayed(m7.f26146W, 250L);
                } else if (action == 1) {
                    M0 m8 = (M0) obj;
                    m8.f26150a0.removeCallbacks(m8.f26146W);
                }
                return false;
            case 1:
                H4 h8 = ((k) obj).f25978N;
                if (h8 != null) {
                    h8.f13700b.zzk(motionEvent);
                }
                return false;
            case 2:
                if (motionEvent.getAction() != 4) {
                    return false;
                }
                ((c) obj).getClass();
                throw null;
            case 3:
                return ((CatchupPlayerActivity) obj).f28361l0.onTouchEvent(motionEvent);
            default:
                return ((PlayStreamEPGActivity) obj).f28878Q0.onTouchEvent(motionEvent);
        }
    }
}
