package F3;

import C3.q;
import D3.C0163g;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes.dex */
public final class j extends MediaSessionCompat.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f3220a;

    public j(l lVar) {
        this.f3220a = lVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x0041  */
    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onCustomAction(String str, Bundle bundle) {
        byte b8;
        l.f3223v.b("onCustomAction with action = %s", str);
        int i8 = 2;
        switch (str) {
            case "com.google.android.gms.cast.framework.action.REWIND":
                b8 = 1;
                break;
            case "com.google.android.gms.cast.framework.action.STOP_CASTING":
                b8 = 2;
                break;
            case "com.google.android.gms.cast.framework.action.DISCONNECT":
                b8 = 3;
                break;
            case "com.google.android.gms.cast.framework.action.FORWARD":
                b8 = 0;
                break;
            default:
                b8 = -1;
                break;
        }
        l lVar = this.f3220a;
        if (b8 == 0) {
            long j8 = lVar.f3228e.f2869I;
            E3.j jVar = lVar.f3237n;
            if (jVar == null) {
                return;
            }
            long jMin = Math.min(jVar.f(), Math.max(0L, jVar.a() + j8));
            E3.j jVar2 = lVar.f3237n;
            if (jVar2 == null) {
                return;
            }
            q qVar = new q(jMin, 0, false, null);
            com.bumptech.glide.c.d("Must be called from the main thread.");
            if (jVar2.t()) {
                E3.j.u(new E3.m(jVar2, qVar, i8));
                return;
            } else {
                E3.j.q();
                return;
            }
        }
        if (b8 == 1) {
            long j9 = -lVar.f3228e.f2869I;
            E3.j jVar3 = lVar.f3237n;
            if (jVar3 == null) {
                return;
            }
            long jMin2 = Math.min(jVar3.f(), Math.max(0L, jVar3.a() + j9));
            E3.j jVar4 = lVar.f3237n;
            if (jVar4 == null) {
                return;
            }
            q qVar2 = new q(jMin2, 0, false, null);
            com.bumptech.glide.c.d("Must be called from the main thread.");
            if (jVar4.t()) {
                E3.j.u(new E3.m(jVar4, qVar2, i8));
                return;
            } else {
                E3.j.q();
                return;
            }
        }
        if (b8 == 2) {
            C0163g c0163g = lVar.f3227d;
            if (c0163g != null) {
                c0163g.b(true);
                return;
            }
            return;
        }
        if (b8 != 3) {
            Intent intent = new Intent(str);
            intent.setComponent(lVar.f3230g);
            lVar.f3224a.sendBroadcast(intent);
        } else {
            C0163g c0163g2 = lVar.f3227d;
            if (c0163g2 != null) {
                c0163g2.b(false);
            }
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final boolean onMediaButtonEvent(Intent intent) {
        E3.j jVar;
        l.f3223v.b("onMediaButtonEvent", new Object[0]);
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (keyEvent == null) {
            return true;
        }
        if ((keyEvent.getKeyCode() != 127 && keyEvent.getKeyCode() != 126) || (jVar = this.f3220a.f3237n) == null) {
            return true;
        }
        jVar.o();
        return true;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onPause() {
        l.f3223v.b("onPause", new Object[0]);
        E3.j jVar = this.f3220a.f3237n;
        if (jVar != null) {
            jVar.o();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onPlay() {
        l.f3223v.b("onPlay", new Object[0]);
        E3.j jVar = this.f3220a.f3237n;
        if (jVar != null) {
            jVar.o();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSeekTo(long j8) {
        l.f3223v.b("onSeekTo %d", Long.valueOf(j8));
        E3.j jVar = this.f3220a.f3237n;
        if (jVar == null) {
            return;
        }
        q qVar = new q(j8, 0, false, null);
        com.bumptech.glide.c.d("Must be called from the main thread.");
        if (jVar.t()) {
            E3.j.u(new E3.m(jVar, qVar, 2));
        } else {
            E3.j.q();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSkipToNext() {
        l.f3223v.b("onSkipToNext", new Object[0]);
        E3.j jVar = this.f3220a.f3237n;
        if (jVar != null) {
            com.bumptech.glide.c.d("Must be called from the main thread.");
            if (jVar.t()) {
                E3.j.u(new E3.l(jVar, 1));
            } else {
                E3.j.q();
            }
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSkipToPrevious() {
        l.f3223v.b("onSkipToPrevious", new Object[0]);
        E3.j jVar = this.f3220a.f3237n;
        if (jVar != null) {
            com.bumptech.glide.c.d("Must be called from the main thread.");
            if (jVar.t()) {
                E3.j.u(new E3.l(jVar, 0));
            } else {
                E3.j.q();
            }
        }
    }
}
