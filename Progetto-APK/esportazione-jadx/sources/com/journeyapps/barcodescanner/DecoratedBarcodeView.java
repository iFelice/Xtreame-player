package com.journeyapps.barcodescanner;

import O5.m;
import O5.p;
import P5.i;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import p161u5.h;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public class DecoratedBarcodeView extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final BarcodeView f24565G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ViewfinderView f24566H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final TextView f24567I;

    public DecoratedBarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, h.f30526c);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, R.layout.zxing_barcode_scanner);
        typedArrayObtainStyledAttributes.recycle();
        View.inflate(getContext(), resourceId, this);
        BarcodeView barcodeView = (BarcodeView) findViewById(R.id.zxing_barcode_surface);
        this.f24565G = barcodeView;
        if (barcodeView == null) {
            throw new IllegalArgumentException("There is no a com.journeyapps.barcodescanner.BarcodeView on provided layout with the id \"zxing_barcode_surface\".");
        }
        barcodeView.b(attributeSet);
        ViewfinderView viewfinderView = (ViewfinderView) findViewById(R.id.zxing_viewfinder_view);
        this.f24566H = viewfinderView;
        if (viewfinderView == null) {
            throw new IllegalArgumentException("There is no a com.journeyapps.barcodescanner.ViewfinderView on provided layout with the id \"zxing_viewfinder_view\".");
        }
        viewfinderView.setCameraPreview(this.f24565G);
        this.f24567I = (TextView) findViewById(R.id.zxing_status_view);
    }

    public BarcodeView getBarcodeView() {
        return (BarcodeView) findViewById(R.id.zxing_barcode_surface);
    }

    public i getCameraSettings() {
        return this.f24565G.getCameraSettings();
    }

    public m getDecoderFactory() {
        return this.f24565G.getDecoderFactory();
    }

    public TextView getStatusView() {
        return this.f24567I;
    }

    public ViewfinderView getViewFinder() {
        return this.f24566H;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i8, KeyEvent keyEvent) {
        if (i8 == 24) {
            this.f24565G.setTorch(true);
            return true;
        }
        if (i8 == 25) {
            this.f24565G.setTorch(false);
            return true;
        }
        if (i8 == 27 || i8 == 80) {
            return true;
        }
        return super.onKeyDown(i8, keyEvent);
    }

    public void setCameraSettings(i iVar) {
        this.f24565G.setCameraSettings(iVar);
    }

    public void setDecoderFactory(m mVar) {
        this.f24565G.setDecoderFactory(mVar);
    }

    public void setStatusText(String str) {
        TextView textView = this.f24567I;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setTorchListener(p pVar) {
    }
}
