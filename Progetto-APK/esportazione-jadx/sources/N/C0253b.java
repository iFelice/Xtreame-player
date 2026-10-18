package N;

import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeProvider;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import pe.hf.black20.R;

/* JADX INFO: renamed from: N.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0253b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final View.AccessibilityDelegate f4876c = new View.AccessibilityDelegate();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View.AccessibilityDelegate f4877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0252a f4878b;

    public C0253b() {
        this(f4876c);
    }

    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f4877a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public O1.J b(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.f4877a.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new O1.J(accessibilityNodeProvider, 1);
        }
        return null;
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.f4877a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void d(View view, O.f fVar) {
        this.f4877a.onInitializeAccessibilityNodeInfo(view, fVar.f5019a);
    }

    public void e(View view, AccessibilityEvent accessibilityEvent) {
        this.f4877a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f4877a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean g(View view, int i8, Bundle bundle) {
        WeakReference weakReference;
        ClickableSpan clickableSpan;
        List listEmptyList = (List) view.getTag(R.id.tag_accessibility_actions);
        if (listEmptyList == null) {
            listEmptyList = Collections.emptyList();
        }
        boolean z7 = false;
        for (int i9 = 0; i9 < listEmptyList.size() && ((O.d) listEmptyList.get(i9)).a() != i8; i9++) {
        }
        boolean zPerformAccessibilityAction = this.f4877a.performAccessibilityAction(view, i8, bundle);
        if (zPerformAccessibilityAction || i8 != R.id.accessibility_action_clickable_span || bundle == null) {
            return zPerformAccessibilityAction;
        }
        int i10 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i10)) != null && (clickableSpan = (ClickableSpan) weakReference.get()) != null) {
            CharSequence text = view.createAccessibilityNodeInfo().getText();
            ClickableSpan[] clickableSpanArr = text instanceof Spanned ? (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class) : null;
            for (int i11 = 0; clickableSpanArr != null && i11 < clickableSpanArr.length; i11++) {
                if (clickableSpan.equals(clickableSpanArr[i11])) {
                    clickableSpan.onClick(view);
                    z7 = true;
                    break;
                }
            }
        }
        return z7;
    }

    public void h(View view, int i8) {
        this.f4877a.sendAccessibilityEvent(view, i8);
    }

    public void i(View view, AccessibilityEvent accessibilityEvent) {
        this.f4877a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public C0253b(View.AccessibilityDelegate accessibilityDelegate) {
        this.f4877a = accessibilityDelegate;
        this.f4878b = new C0252a(this);
    }
}
