package androidx.mediarouter.app;

import A0.O;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class OverlayListView extends ListView {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f9544G;

    public OverlayListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9544G = new ArrayList();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.f9544G;
        if (arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                O.I(it.next());
                throw null;
            }
        }
    }
}
