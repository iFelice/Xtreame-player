package p017c0;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import okhttp3.HttpUrl;
import org.videolan.libvlc.media.MediaPlayer;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class e extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ViewGroup f10572G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ViewGroup f10573H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ArrayList f10574I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ArrayList f10575J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final float f10576K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final float f10577L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final float f10578M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f10579N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final DecelerateInterpolator f10580O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public float f10581P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public float f10582Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f10583R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final ArrayList f10584S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final int f10585T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f10586U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final b f10587V;

    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f10574I = new ArrayList();
        this.f10581P = 3.0f;
        this.f10582Q = 1.0f;
        this.f10583R = 0;
        this.f10584S = new ArrayList();
        this.f10585T = R.layout.lb_picker_item;
        this.f10586U = 0;
        this.f10587V = new b(this);
        setEnabled(true);
        setDescendantFocusability(262144);
        this.f10577L = 1.0f;
        this.f10576K = 1.0f;
        this.f10578M = 0.5f;
        this.f10579N = MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK;
        this.f10580O = new DecelerateInterpolator(2.5f);
        new AccelerateInterpolator(2.5f);
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(getContext()).inflate(R.layout.lb_picker, (ViewGroup) this, true);
        this.f10572G = viewGroup;
        this.f10573H = (ViewGroup) viewGroup.findViewById(R.id.picker);
    }

    public final void a(int i8, f fVar) {
        this.f10575J.set(i8, fVar);
        VerticalGridView verticalGridView = (VerticalGridView) this.f10574I.get(i8);
        c cVar = (c) verticalGridView.getAdapter();
        if (cVar != null) {
            cVar.f5265G.a();
        }
        verticalGridView.setSelectedPosition(fVar.f10588a - fVar.f10589b);
    }

    public final void b(View view, boolean z7, float f8, DecelerateInterpolator decelerateInterpolator) {
        view.animate().cancel();
        if (z7) {
            view.animate().alpha(f8).setDuration(this.f10579N).setInterpolator(decelerateInterpolator).start();
        } else {
            view.setAlpha(f8);
        }
    }

    public final void c(View view, boolean z7, int i8, boolean z8) {
        boolean z9 = i8 == this.f10583R || !hasFocus();
        DecelerateInterpolator decelerateInterpolator = this.f10580O;
        if (z7) {
            if (z9) {
                b(view, z8, this.f10577L, decelerateInterpolator);
                return;
            } else {
                b(view, z8, this.f10576K, decelerateInterpolator);
                return;
            }
        }
        if (z9) {
            b(view, z8, this.f10578M, decelerateInterpolator);
        } else {
            b(view, z8, 0.0f, decelerateInterpolator);
        }
    }

    public final void d(int i8) {
        VerticalGridView verticalGridView = (VerticalGridView) this.f10574I.get(i8);
        int selectedPosition = verticalGridView.getSelectedPosition();
        int i9 = 0;
        while (i9 < verticalGridView.getAdapter().a()) {
            View viewS = verticalGridView.getLayoutManager().s(i9);
            if (viewS != null) {
                c(viewS, selectedPosition == i9, i8, true);
            }
            i9++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!isActivated()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 23 && keyCode != 66) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyEvent.getAction() == 1) {
            performClick();
        }
        return true;
    }

    public final void e() {
        for (int i8 = 0; i8 < getColumnsCount(); i8++) {
            f((VerticalGridView) this.f10574I.get(i8));
        }
    }

    public final void f(VerticalGridView verticalGridView) {
        ViewGroup.LayoutParams layoutParams = verticalGridView.getLayoutParams();
        float activatedVisibleItemCount = isActivated() ? getActivatedVisibleItemCount() : getVisibleItemCount();
        layoutParams.height = (int) (((activatedVisibleItemCount - 1.0f) * verticalGridView.getVerticalSpacing()) + (getPickerItemHeightPixels() * activatedVisibleItemCount));
        verticalGridView.setLayoutParams(layoutParams);
    }

    public float getActivatedVisibleItemCount() {
        return this.f10581P;
    }

    public int getColumnsCount() {
        ArrayList arrayList = this.f10575J;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public int getPickerItemHeightPixels() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.picker_item_height);
    }

    public final int getPickerItemLayoutId() {
        return this.f10585T;
    }

    public final int getPickerItemTextViewId() {
        return this.f10586U;
    }

    public int getSelectedColumn() {
        return this.f10583R;
    }

    public final CharSequence getSeparator() {
        return (CharSequence) this.f10584S.get(0);
    }

    public final List<CharSequence> getSeparators() {
        return this.f10584S;
    }

    public float getVisibleItemCount() {
        return 1.0f;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i8, Rect rect) {
        int selectedColumn = getSelectedColumn();
        ArrayList arrayList = this.f10574I;
        if (selectedColumn < arrayList.size()) {
            return ((VerticalGridView) arrayList.get(selectedColumn)).requestFocus(i8, rect);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f10574I;
            if (i8 >= arrayList.size()) {
                return;
            }
            if (((VerticalGridView) arrayList.get(i8)).hasFocus()) {
                setSelectedColumn(i8);
            }
            i8++;
        }
    }

    @Override // android.view.View
    public void setActivated(boolean z7) {
        ArrayList arrayList;
        if (z7 == isActivated()) {
            super.setActivated(z7);
            return;
        }
        super.setActivated(z7);
        boolean zHasFocus = hasFocus();
        int selectedColumn = getSelectedColumn();
        setDescendantFocusability(131072);
        if (!z7 && zHasFocus && isFocusable()) {
            requestFocus();
        }
        int i8 = 0;
        while (true) {
            int columnsCount = getColumnsCount();
            arrayList = this.f10574I;
            if (i8 >= columnsCount) {
                break;
            }
            ((VerticalGridView) arrayList.get(i8)).setFocusable(z7);
            i8++;
        }
        e();
        boolean zIsActivated = isActivated();
        for (int i9 = 0; i9 < getColumnsCount(); i9++) {
            VerticalGridView verticalGridView = (VerticalGridView) arrayList.get(i9);
            for (int i10 = 0; i10 < verticalGridView.getChildCount(); i10++) {
                verticalGridView.getChildAt(i10).setFocusable(zIsActivated);
            }
        }
        if (z7 && zHasFocus && selectedColumn >= 0) {
            ((VerticalGridView) arrayList.get(selectedColumn)).requestFocus();
        }
        setDescendantFocusability(262144);
    }

    public void setActivatedVisibleItemCount(float f8) {
        if (f8 <= 0.0f) {
            throw new IllegalArgumentException();
        }
        if (this.f10581P != f8) {
            this.f10581P = f8;
            if (isActivated()) {
                e();
            }
        }
    }

    public void setColumns(List<f> list) {
        ArrayList arrayList = this.f10584S;
        if (arrayList.size() == 0) {
            throw new IllegalStateException("Separators size is: " + arrayList.size() + ". At least one separator must be provided");
        }
        if (arrayList.size() == 1) {
            CharSequence charSequence = (CharSequence) arrayList.get(0);
            arrayList.clear();
            arrayList.add(HttpUrl.FRAGMENT_ENCODE_SET);
            for (int i8 = 0; i8 < list.size() - 1; i8++) {
                arrayList.add(charSequence);
            }
            arrayList.add(HttpUrl.FRAGMENT_ENCODE_SET);
        } else if (arrayList.size() != list.size() + 1) {
            throw new IllegalStateException("Separators size: " + arrayList.size() + " mustequal the size of columns: " + list.size() + " + 1");
        }
        ArrayList arrayList2 = this.f10574I;
        arrayList2.clear();
        ViewGroup viewGroup = this.f10573H;
        viewGroup.removeAllViews();
        ArrayList arrayList3 = new ArrayList(list);
        this.f10575J = arrayList3;
        if (this.f10583R > arrayList3.size() - 1) {
            this.f10583R = this.f10575J.size() - 1;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int columnsCount = getColumnsCount();
        if (!TextUtils.isEmpty((CharSequence) arrayList.get(0))) {
            TextView textView = (TextView) layoutInflaterFrom.inflate(R.layout.lb_picker_separator, viewGroup, false);
            textView.setText((CharSequence) arrayList.get(0));
            viewGroup.addView(textView);
        }
        int i9 = 0;
        while (i9 < columnsCount) {
            VerticalGridView verticalGridView = (VerticalGridView) layoutInflaterFrom.inflate(R.layout.lb_picker_column, viewGroup, false);
            f(verticalGridView);
            verticalGridView.setWindowAlignment(0);
            verticalGridView.setHasFixedSize(false);
            verticalGridView.setFocusable(isActivated());
            verticalGridView.setItemViewCacheSize(0);
            arrayList2.add(verticalGridView);
            viewGroup.addView(verticalGridView);
            int i10 = i9 + 1;
            if (!TextUtils.isEmpty((CharSequence) arrayList.get(i10))) {
                TextView textView2 = (TextView) layoutInflaterFrom.inflate(R.layout.lb_picker_separator, viewGroup, false);
                textView2.setText((CharSequence) arrayList.get(i10));
                viewGroup.addView(textView2);
            }
            getContext();
            verticalGridView.setAdapter(new c(this, getPickerItemLayoutId(), getPickerItemTextViewId(), i9));
            verticalGridView.setOnChildViewHolderSelectedListener(this.f10587V);
            i9 = i10;
        }
    }

    public final void setPickerItemTextViewId(int i8) {
        this.f10586U = i8;
    }

    public void setSelectedColumn(int i8) {
        if (this.f10583R != i8) {
            this.f10583R = i8;
            for (int i9 = 0; i9 < this.f10574I.size(); i9++) {
                d(i9);
            }
        }
    }

    public final void setSeparator(CharSequence charSequence) {
        setSeparators(Arrays.asList(charSequence));
    }

    public final void setSeparators(List<CharSequence> list) {
        ArrayList arrayList = this.f10584S;
        arrayList.clear();
        arrayList.addAll(list);
    }

    public void setVisibleItemCount(float f8) {
        if (f8 <= 0.0f) {
            throw new IllegalArgumentException();
        }
        if (this.f10582Q != f8) {
            this.f10582Q = f8;
            if (isActivated()) {
                return;
            }
            e();
        }
    }
}
