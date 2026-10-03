package androidx.leanback.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import java.util.Random;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import p086l.b1;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class V extends EditText {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final Pattern f9271L = Pattern.compile("\\S+");

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final b1 f9272M = new b1(4, Integer.class, "streamPosition");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Random f9273G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Bitmap f9274H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Bitmap f9275I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f9276J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public ObjectAnimator f9277K;

    public V(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.style.TextAppearance_Leanback_SearchTextEdit);
        this.f9273G = new Random();
    }

    public int getStreamPosition() {
        return this.f9276J;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.lb_text_dot_one);
        this.f9274H = Bitmap.createScaledBitmap(bitmapDecodeResource, (int) (bitmapDecodeResource.getWidth() * 1.3f), (int) (bitmapDecodeResource.getHeight() * 1.3f), false);
        Bitmap bitmapDecodeResource2 = BitmapFactory.decodeResource(getResources(), R.drawable.lb_text_dot_two);
        this.f9275I = Bitmap.createScaledBitmap(bitmapDecodeResource2, (int) (bitmapDecodeResource2.getWidth() * 1.3f), (int) (bitmapDecodeResource2.getHeight() * 1.3f), false);
        this.f9276J = -1;
        ObjectAnimator objectAnimator = this.f9277K;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        setText(HttpUrl.FRAGMENT_ENCODE_SET);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(V.class.getCanonicalName());
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(E3.f.E(callback, this));
    }

    public void setStreamPosition(int i8) {
        this.f9276J = i8;
        invalidate();
    }
}
