package p003a2;

import N.C0253b;
import O.f;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.NavigationMenuItemView;

/* JADX INFO: loaded from: classes.dex */
public final class e extends C0253b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8643d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ View f8644e;

    public /* synthetic */ e(View view, int i8) {
        this.f8643d = i8;
        this.f8644e = view;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0031  */
    @Override // N.C0253b
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        boolean z7;
        ViewPager viewPager;
        a aVar;
        int i8 = this.f8643d;
        View view2 = this.f8644e;
        switch (i8) {
            case 0:
                super.c(view, accessibilityEvent);
                accessibilityEvent.setClassName(ViewPager.class.getName());
                a aVar2 = ((ViewPager) view2).f9729K;
                if (aVar2 != null) {
                    z7 = aVar2.c() > 1;
                }
                accessibilityEvent.setScrollable(z7);
                if (accessibilityEvent.getEventType() == 4096 && (aVar = (viewPager = (ViewPager) view2).f9729K) != null) {
                    accessibilityEvent.setItemCount(aVar.c());
                    accessibilityEvent.setFromIndex(viewPager.f9730L);
                    accessibilityEvent.setToIndex(viewPager.f9730L);
                    break;
                }
                break;
            case 1:
                super.c(view, accessibilityEvent);
                accessibilityEvent.setChecked(((CheckableImageButton) view2).f24139J);
                break;
            default:
                super.c(view, accessibilityEvent);
                break;
        }
    }

    @Override // N.C0253b
    public final void d(View view, f fVar) {
        View.AccessibilityDelegate accessibilityDelegate = this.f4877a;
        AccessibilityNodeInfo accessibilityNodeInfo = fVar.f5019a;
        int i8 = this.f8643d;
        View view2 = this.f8644e;
        switch (i8) {
            case 0:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setClassName("androidx.viewpager.widget.ViewPager");
                a aVar = ((ViewPager) view2).f9729K;
                fVar.h(aVar != null && aVar.c() > 1);
                ViewPager viewPager = (ViewPager) view2;
                if (viewPager.canScrollHorizontally(1)) {
                    fVar.a(4096);
                }
                if (viewPager.canScrollHorizontally(-1)) {
                    fVar.a(8192);
                }
                break;
            case 1:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setCheckable(true);
                accessibilityNodeInfo.setChecked(((CheckableImageButton) view2).f24139J);
                break;
            default:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setCheckable(((NavigationMenuItemView) view2).f24143g0);
                break;
        }
    }

    @Override // N.C0253b
    public final boolean g(View view, int i8, Bundle bundle) {
        switch (this.f8643d) {
            case 0:
                if (super.g(view, i8, bundle)) {
                    return true;
                }
                View view2 = this.f8644e;
                if (i8 == 4096) {
                    ViewPager viewPager = (ViewPager) view2;
                    if (viewPager.canScrollHorizontally(1)) {
                        viewPager.setCurrentItem(viewPager.f9730L + 1);
                        return true;
                    }
                } else if (i8 == 8192) {
                    ViewPager viewPager2 = (ViewPager) view2;
                    if (viewPager2.canScrollHorizontally(-1)) {
                        viewPager2.setCurrentItem(viewPager2.f9730L - 1);
                        return true;
                    }
                }
                return false;
            default:
                return super.g(view, i8, bundle);
        }
    }
}
