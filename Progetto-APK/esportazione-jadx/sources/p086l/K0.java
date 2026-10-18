package p086l;

import android.graphics.Rect;
import android.os.Handler;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import pe.hf.black20.epg.EPGActivityXMLTV;

/* JADX INFO: loaded from: classes.dex */
public final class K0 implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f26122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f26123b;

    public /* synthetic */ K0(Object obj, int i8) {
        this.f26122a = i8;
        this.f26123b = obj;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i8, int i9, int i10) {
        switch (this.f26122a) {
            case 0:
                break;
            default:
                EPGActivityXMLTV.f29257j0.setSelection(i8);
                break;
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i8) {
        View childAt;
        switch (this.f26122a) {
            case 0:
                if (i8 == 1) {
                    M0 m7 = (M0) this.f26123b;
                    if (m7.f26154e0.getInputMethodMode() != 2 && m7.f26154e0.getContentView() != null) {
                        Handler handler = m7.f26150a0;
                        F0 f8 = m7.f26146W;
                        handler.removeCallbacks(f8);
                        f8.run();
                    }
                }
                break;
            default:
                if (i8 == 0 && (childAt = EPGActivityXMLTV.f29258k0.getChildAt(0)) != null) {
                    Rect rect = new Rect(0, 0, childAt.getWidth(), childAt.getHeight());
                    double height = ((double) childAt.getHeight()) * 1.0d;
                    EPGActivityXMLTV.f29258k0.getChildVisibleRect(childAt, rect, null);
                    if (Math.abs(rect.height()) != height) {
                        double d6 = height / 2.5d;
                        if (Math.abs(rect.height()) < d6) {
                            ListView listView = EPGActivityXMLTV.f29258k0;
                            listView.smoothScrollToPosition(listView.getLastVisiblePosition());
                        } else if (Math.abs(rect.height()) <= d6) {
                            ListView listView2 = EPGActivityXMLTV.f29258k0;
                            listView2.smoothScrollToPosition(listView2.getFirstVisiblePosition());
                        } else {
                            ListView listView3 = EPGActivityXMLTV.f29258k0;
                            listView3.smoothScrollToPosition(listView3.getFirstVisiblePosition());
                        }
                    }
                    break;
                }
                break;
        }
    }
}
