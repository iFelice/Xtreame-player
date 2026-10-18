package p086l;

import android.database.DataSetObserver;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: loaded from: classes.dex */
public final class J0 extends DataSetObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f26119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f26120b;

    public /* synthetic */ J0(Object obj, int i8) {
        this.f26119a = i8;
        this.f26120b = obj;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        int i8 = this.f26119a;
        Object obj = this.f26120b;
        switch (i8) {
            case 0:
                M0 m7 = (M0) obj;
                if (m7.f26154e0.isShowing()) {
                    m7.h();
                }
                break;
            case 1:
                ((ViewPager) obj).e();
                break;
            default:
                ((TabLayout) obj).f();
                break;
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        int i8 = this.f26119a;
        Object obj = this.f26120b;
        switch (i8) {
            case 0:
                ((M0) obj).dismiss();
                break;
            case 1:
                ((ViewPager) obj).e();
                break;
            default:
                ((TabLayout) obj).f();
                break;
        }
    }
}
