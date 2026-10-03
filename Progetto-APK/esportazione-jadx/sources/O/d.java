package O;

import android.R;
import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;
import okhttp3.internal.http2.Http2;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f5008c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d f5009d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final d f5010e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final d f5011f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final d f5012g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final d f5013h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final d f5014i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final d f5015j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f5016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5017b;

    static {
        new d(null, 1, null);
        new d(null, 2, null);
        new d(null, 4, null);
        new d(null, 8, null);
        new d(null, 16, null);
        new d(null, 32, null);
        new d(null, 64, null);
        new d(null, 128, null);
        new d(null, 256, g.class);
        new d(null, IMediaList.Event.ItemAdded, g.class);
        new d(null, 1024, h.class);
        new d(null, 2048, h.class);
        f5008c = new d(null, 4096, null);
        f5009d = new d(null, 8192, null);
        new d(null, Http2.INITIAL_MAX_FRAME_SIZE, null);
        new d(null, 32768, null);
        new d(null, 65536, null);
        new d(null, 131072, l.class);
        new d(null, 262144, null);
        new d(null, 524288, null);
        new d(null, 1048576, null);
        new d(null, 2097152, m.class);
        int i8 = Build.VERSION.SDK_INT;
        new d(i8 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, R.id.accessibilityActionShowOnScreen, null);
        f5010e = new d(i8 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, R.id.accessibilityActionScrollToPosition, j.class);
        f5011f = new d(i8 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, R.id.accessibilityActionScrollUp, null);
        f5012g = new d(i8 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, R.id.accessibilityActionScrollLeft, null);
        f5013h = new d(i8 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, R.id.accessibilityActionScrollDown, null);
        f5014i = new d(i8 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, R.id.accessibilityActionScrollRight, null);
        new d(i8 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null);
        new d(i8 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null);
        new d(i8 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null);
        new d(i8 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null);
        new d(i8 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, R.id.accessibilityActionContextClick, null);
        new d(i8 >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, R.id.accessibilityActionSetProgress, k.class);
        new d(i8 >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, i.class);
        new d(i8 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null);
        new d(i8 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null);
        new d(i8 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null);
        new d(i8 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter, null);
        new d(i8 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START : null, R.id.accessibilityActionDragStart, null);
        new d(i8 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP : null, R.id.accessibilityActionDragDrop, null);
        new d(i8 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL : null, R.id.accessibilityActionDragCancel, null);
        new d(i8 >= 33 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS : null, R.id.accessibilityActionShowTextSuggestions, null);
        f5015j = new d(i8 >= 34 ? e7.a.b() : null, R.id.accessibilityActionScrollInDirection, null);
    }

    public d(Object obj, int i8, Class cls) {
        this.f5017b = i8;
        if (obj == null) {
            this.f5016a = new AccessibilityNodeInfo.AccessibilityAction(i8, null);
        } else {
            this.f5016a = obj;
        }
    }

    public final int a() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.f5016a).getId();
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof d)) {
            return false;
        }
        Object obj2 = ((d) obj).f5016a;
        Object obj3 = this.f5016a;
        if (obj3 == null) {
            return obj2 == null;
        }
        return obj3.equals(obj2);
    }

    public final int hashCode() {
        Object obj = this.f5016a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
        String strD = f.d(this.f5017b);
        if (strD.equals("ACTION_UNKNOWN")) {
            Object obj = this.f5016a;
            if (((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel() != null) {
                strD = ((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel().toString();
            }
        }
        sb.append(strD);
        return sb.toString();
    }
}
