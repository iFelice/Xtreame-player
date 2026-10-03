package org.videolan.libvlc.util;

import E.b;
import android.app.Activity;
import android.app.Presentation;
import android.content.Context;
import android.content.DialogInterface;
import android.media.MediaRouter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.Display;
import android.view.SurfaceView;
import android.view.WindowManager;
import android.widget.FrameLayout;
import org.videolan.libvlc.RendererItem;
import p032e0.r;
import p032e0.s;
import p032e0.t;
import p032e0.w;
import p086l.H;
import p101n.c;
import p101n.g;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public class DisplayManager {
    private static final String TAG = "VLC/DisplayManager";
    private Activity mActivity;
    private DisplayType mDisplayType;
    private MediaRouter mMediaRouter;
    private MediaRouter.SimpleCallback mMediaRouterCallback;
    private SecondaryDisplay mPresentation;
    private RendererItem mRendererItem;
    private t mSelectedRenderer;
    private boolean mTextureView;
    private int mPresentationId = -1;
    private w mRendererObs = new w() { // from class: org.videolan.libvlc.util.DisplayManager.1
        @Override // p032e0.w
        public void onChanged(RendererItem rendererItem) {
            if (DisplayManager.this.mRendererItem != rendererItem) {
                DisplayManager.this.mRendererItem = rendererItem;
                DisplayManager.this.updateDisplayType();
            }
        }
    };
    private DialogInterface.OnDismissListener mOnDismissListener = new DialogInterface.OnDismissListener() { // from class: org.videolan.libvlc.util.DisplayManager.2
        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (dialogInterface == DisplayManager.this.mPresentation) {
                DisplayManager.this.mPresentation = null;
                DisplayManager.this.mPresentationId = -1;
            }
        }
    };

    public enum DisplayType {
        PRIMARY,
        PRESENTATION,
        RENDERER
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005c  */
    public DisplayManager(Activity activity, t tVar, boolean z7, boolean z8, boolean z9) {
        Object systemService;
        SecondaryDisplay secondaryDisplayCreatePresentation;
        this.mActivity = activity;
        this.mSelectedRenderer = tVar;
        Context applicationContext = activity.getApplicationContext();
        int i8 = Build.VERSION.SDK_INT;
        Object obj = null;
        if (i8 >= 23) {
            systemService = H.i(applicationContext);
        } else {
            String strJ = i8 >= 23 ? H.j(applicationContext) : (String) b.f2438a.get(MediaRouter.class);
            systemService = strJ != null ? applicationContext.getSystemService(strJ) : null;
        }
        this.mMediaRouter = (MediaRouter) systemService;
        this.mTextureView = z7;
        if (z8 || z9 || tVar == null) {
            secondaryDisplayCreatePresentation = null;
        } else {
            Object obj2 = tVar.f24770e;
            if ((obj2 == t.f24765k ? null : obj2) == null) {
                secondaryDisplayCreatePresentation = createPresentation();
            } else {
                secondaryDisplayCreatePresentation = null;
            }
        }
        this.mPresentation = secondaryDisplayCreatePresentation;
        t tVar2 = this.mSelectedRenderer;
        if (tVar2 != null) {
            Object obj3 = tVar2.f24770e;
            this.mRendererItem = (RendererItem) (obj3 == t.f24765k ? null : obj3);
            t tVar3 = this.mSelectedRenderer;
            w wVar = this.mRendererObs;
            tVar3.getClass();
            t.a("observeForever");
            r rVar = new r(tVar3, wVar);
            g gVar = tVar3.f24767b;
            c cVarB = gVar.b(wVar);
            if (cVarB != null) {
                obj = cVarB.f27292H;
            } else {
                c cVar = new c(wVar, rVar);
                gVar.f27303J++;
                c cVar2 = gVar.f27301H;
                if (cVar2 == null) {
                    gVar.f27300G = cVar;
                    gVar.f27301H = cVar;
                } else {
                    cVar2.f27293I = cVar;
                    cVar.f27294J = cVar2;
                    gVar.f27301H = cVar;
                }
            }
            if (((s) obj) == null) {
                rVar.a(true);
            }
        }
        this.mDisplayType = z9 ? DisplayType.PRIMARY : getCurrentType();
    }

    private SecondaryDisplay createPresentation() {
        MediaRouter mediaRouter = this.mMediaRouter;
        if (mediaRouter == null) {
            return null;
        }
        MediaRouter.RouteInfo selectedRoute = mediaRouter.getSelectedRoute(2);
        Display presentationDisplay = selectedRoute != null ? selectedRoute.getPresentationDisplay() : null;
        if (presentationDisplay != null) {
            SecondaryDisplay secondaryDisplay = new SecondaryDisplay(this.mActivity, presentationDisplay);
            secondaryDisplay.setOnDismissListener(this.mOnDismissListener);
            try {
                secondaryDisplay.show();
                this.mPresentationId = presentationDisplay.getDisplayId();
                return secondaryDisplay;
            } catch (WindowManager.InvalidDisplayException unused) {
                this.mPresentationId = -1;
            }
        }
        return null;
    }

    private DisplayType getCurrentType() {
        if (this.mPresentationId != -1) {
            return DisplayType.PRESENTATION;
        }
        return this.mRendererItem != null ? DisplayType.RENDERER : DisplayType.PRIMARY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removePresentation() {
        if (this.mMediaRouter == null) {
            return;
        }
        SecondaryDisplay secondaryDisplay = this.mPresentation;
        if (secondaryDisplay != null) {
            secondaryDisplay.dismiss();
            this.mPresentation = null;
        }
        updateDisplayType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDisplayType() {
        if (this.mDisplayType != getCurrentType()) {
            new Handler().postDelayed(new Runnable() { // from class: org.videolan.libvlc.util.DisplayManager.3
                @Override // java.lang.Runnable
                public void run() {
                    DisplayManager.this.mActivity.recreate();
                }
            }, 100L);
        }
    }

    public DisplayType getDisplayType() {
        return this.mDisplayType;
    }

    public SecondaryDisplay getPresentation() {
        return this.mPresentation;
    }

    public boolean isOnRenderer() {
        return this.mDisplayType == DisplayType.RENDERER;
    }

    public boolean isPrimary() {
        return this.mDisplayType == DisplayType.PRIMARY;
    }

    public boolean isSecondary() {
        return this.mDisplayType == DisplayType.PRESENTATION;
    }

    public void release() {
        SecondaryDisplay secondaryDisplay = this.mPresentation;
        if (secondaryDisplay != null) {
            secondaryDisplay.dismiss();
            this.mPresentation = null;
        }
        t tVar = this.mSelectedRenderer;
        if (tVar != null) {
            w wVar = this.mRendererObs;
            t.a("removeObserver");
            s sVar = (s) tVar.f24767b.c(wVar);
            if (sVar == null) {
                return;
            }
            sVar.a(false);
        }
    }

    public void removeMediaRouterCallback() {
        MediaRouter mediaRouter = this.mMediaRouter;
        if (mediaRouter != null) {
            mediaRouter.removeCallback(this.mMediaRouterCallback);
        }
        this.mMediaRouterCallback = null;
    }

    public boolean setMediaRouterCallback() {
        if (this.mMediaRouter == null || this.mMediaRouterCallback != null) {
            return false;
        }
        MediaRouter.SimpleCallback simpleCallback = new MediaRouter.SimpleCallback() { // from class: org.videolan.libvlc.util.DisplayManager.4
            @Override // android.media.MediaRouter.Callback
            public void onRoutePresentationDisplayChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
                int displayId = routeInfo.getPresentationDisplay() != null ? routeInfo.getPresentationDisplay().getDisplayId() : -1;
                if (displayId == DisplayManager.this.mPresentationId) {
                    return;
                }
                DisplayManager.this.mPresentationId = displayId;
                if (displayId == -1) {
                    DisplayManager.this.removePresentation();
                } else {
                    DisplayManager.this.updateDisplayType();
                }
            }
        };
        this.mMediaRouterCallback = simpleCallback;
        this.mMediaRouter.addCallback(2, simpleCallback);
        return true;
    }

    public class SecondaryDisplay extends Presentation {
        public static final String TAG = "VLC/SecondaryDisplay";
        private SurfaceView mSubtitlesSurfaceView;
        private FrameLayout mSurfaceFrame;
        private SurfaceView mSurfaceView;

        public SecondaryDisplay(Context context, Display display) {
            super(context, display);
        }

        public SurfaceView getSubtitlesSurfaceView() {
            return this.mSubtitlesSurfaceView;
        }

        public FrameLayout getSurfaceFrame() {
            return this.mSurfaceFrame;
        }

        public SurfaceView getSurfaceView() {
            return this.mSurfaceView;
        }

        @Override // android.app.Dialog
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setContentView(R.layout.player_remote);
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.remote_player_surface_frame);
            this.mSurfaceFrame = frameLayout;
            this.mSurfaceView = (SurfaceView) frameLayout.findViewById(R.id.remote_player_surface);
            SurfaceView surfaceView = (SurfaceView) this.mSurfaceFrame.findViewById(R.id.remote_subtitles_surface);
            this.mSubtitlesSurfaceView = surfaceView;
            surfaceView.setZOrderMediaOverlay(true);
            this.mSubtitlesSurfaceView.getHolder().setFormat(-3);
        }

        public SecondaryDisplay(Context context, Display display, int i8) {
            super(context, display, i8);
        }
    }
}
