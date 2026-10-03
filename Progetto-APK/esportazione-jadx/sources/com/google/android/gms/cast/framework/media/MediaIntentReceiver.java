package com.google.android.gms.cast.framework.media;

import C3.q;
import D3.AbstractC0162f;
import D3.C0157a;
import D3.C0159c;
import D3.C0163g;
import D3.w;
import D3.y;
import E3.j;
import E3.l;
import E3.m;
import H3.b;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.KeyEvent;
import androidx.annotation.Keep;
import com.bumptech.glide.c;
import com.google.android.gms.internal.cast.AbstractC2501u;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class MediaIntentReceiver extends BroadcastReceiver {
    public static final String ACTION_DISCONNECT = "com.google.android.gms.cast.framework.action.DISCONNECT";
    public static final String ACTION_FORWARD = "com.google.android.gms.cast.framework.action.FORWARD";
    public static final String ACTION_REWIND = "com.google.android.gms.cast.framework.action.REWIND";
    public static final String ACTION_SKIP_NEXT = "com.google.android.gms.cast.framework.action.SKIP_NEXT";
    public static final String ACTION_SKIP_PREV = "com.google.android.gms.cast.framework.action.SKIP_PREV";
    public static final String ACTION_STOP_CASTING = "com.google.android.gms.cast.framework.action.STOP_CASTING";
    public static final String ACTION_TOGGLE_PLAYBACK = "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK";
    public static final String EXTRA_SKIP_STEP_MS = "googlecast-extra_skip_step_ms";
    private static final String TAG = "MediaIntentReceiver";
    private static final b log = new b(TAG, null);

    private static j getRemoteMediaClient(C0159c c0159c) {
        if (c0159c == null) {
            return null;
        }
        c.d("Must be called from the main thread.");
        y yVar = c0159c.f2381a;
        if (yVar == null) {
            return null;
        }
        try {
            w wVar = (w) yVar;
            Parcel parcelV0 = wVar.v0(5, wVar.j0());
            int i8 = AbstractC2501u.f22800a;
            boolean z7 = parcelV0.readInt() != 0;
            parcelV0.recycle();
            if (!z7) {
                return null;
            }
            c.d("Must be called from the main thread.");
            return c0159c.f2376j;
        } catch (RemoteException e8) {
            AbstractC0162f.f2380b.a(e8, "Unable to call %s on %s.", "isConnected", y.class.getSimpleName());
            return null;
        }
    }

    private void seek(C0159c c0159c, long j8) {
        j remoteMediaClient;
        if (j8 == 0 || (remoteMediaClient = getRemoteMediaClient(c0159c)) == null || remoteMediaClient.i() || remoteMediaClient.m()) {
            return;
        }
        q qVar = new q(remoteMediaClient.a() + j8, 0, false, null);
        c.d("Must be called from the main thread.");
        if (remoteMediaClient.t()) {
            j.u(new m(remoteMediaClient, qVar, 2));
        } else {
            j.q();
        }
    }

    private void togglePlayback(C0159c c0159c) {
        j remoteMediaClient = getRemoteMediaClient(c0159c);
        if (remoteMediaClient == null) {
            return;
        }
        remoteMediaClient.o();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:34:0x0081  */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        log.b("onReceive action: %s", action);
        if (action == null) {
            return;
        }
        C0157a c0157aA = C0157a.a(context);
        c0157aA.getClass();
        c.d("Must be called from the main thread.");
        C0163g c0163g = c0157aA.f2340b;
        AbstractC0162f abstractC0162fC = c0163g.c();
        if (abstractC0162fC != null) {
            switch (action) {
                case "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK":
                    onReceiveActionTogglePlayback(abstractC0162fC);
                    break;
                case "com.google.android.gms.cast.framework.action.SKIP_NEXT":
                    onReceiveActionSkipNext(abstractC0162fC);
                    break;
                case "com.google.android.gms.cast.framework.action.SKIP_PREV":
                    onReceiveActionSkipPrev(abstractC0162fC);
                    break;
                case "com.google.android.gms.cast.framework.action.FORWARD":
                    onReceiveActionForward(abstractC0162fC, intent.getLongExtra(EXTRA_SKIP_STEP_MS, 0L));
                    break;
                case "com.google.android.gms.cast.framework.action.REWIND":
                    onReceiveActionRewind(abstractC0162fC, intent.getLongExtra(EXTRA_SKIP_STEP_MS, 0L));
                    break;
                case "com.google.android.gms.cast.framework.action.STOP_CASTING":
                    c0163g.b(true);
                    break;
                case "com.google.android.gms.cast.framework.action.DISCONNECT":
                    c0163g.b(false);
                    break;
                case "android.intent.action.MEDIA_BUTTON":
                    onReceiveActionMediaButton(abstractC0162fC, intent);
                    break;
                default:
                    onReceiveOtherAction(context, action, intent);
                    break;
            }
        }
    }

    public void onReceiveActionForward(AbstractC0162f abstractC0162f, long j8) {
        if (abstractC0162f instanceof C0159c) {
            seek((C0159c) abstractC0162f, j8);
        }
    }

    public void onReceiveActionMediaButton(AbstractC0162f abstractC0162f, Intent intent) {
        if ((abstractC0162f instanceof C0159c) && intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            Bundle extras = intent.getExtras();
            c.h(extras);
            KeyEvent keyEvent = (KeyEvent) extras.get("android.intent.extra.KEY_EVENT");
            if (keyEvent != null && keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 85) {
                togglePlayback((C0159c) abstractC0162f);
            }
        }
    }

    public void onReceiveActionRewind(AbstractC0162f abstractC0162f, long j8) {
        if (abstractC0162f instanceof C0159c) {
            seek((C0159c) abstractC0162f, -j8);
        }
    }

    public void onReceiveActionSkipNext(AbstractC0162f abstractC0162f) {
        j remoteMediaClient;
        if (!(abstractC0162f instanceof C0159c) || (remoteMediaClient = getRemoteMediaClient((C0159c) abstractC0162f)) == null || remoteMediaClient.m()) {
            return;
        }
        c.d("Must be called from the main thread.");
        if (remoteMediaClient.t()) {
            j.u(new l(remoteMediaClient, 1));
        } else {
            j.q();
        }
    }

    public void onReceiveActionSkipPrev(AbstractC0162f abstractC0162f) {
        j remoteMediaClient;
        if (!(abstractC0162f instanceof C0159c) || (remoteMediaClient = getRemoteMediaClient((C0159c) abstractC0162f)) == null || remoteMediaClient.m()) {
            return;
        }
        c.d("Must be called from the main thread.");
        if (remoteMediaClient.t()) {
            j.u(new l(remoteMediaClient, 0));
        } else {
            j.q();
        }
    }

    public void onReceiveActionTogglePlayback(AbstractC0162f abstractC0162f) {
        if (abstractC0162f instanceof C0159c) {
            togglePlayback((C0159c) abstractC0162f);
        }
    }

    public void onReceiveOtherAction(Context context, String str, Intent intent) {
    }

    @Deprecated
    public void onReceiveOtherAction(String str, Intent intent) {
        onReceiveOtherAction(null, str, intent);
    }
}
