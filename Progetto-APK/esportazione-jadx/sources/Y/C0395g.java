package Y;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import pe.hf.black20.R;

/* JADX INFO: renamed from: Y.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0395g extends p039f.H {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f7884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f7885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0410w f7886e;

    /* JADX WARN: Code duplicated, block: B:18:0x0027  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e6 A[Catch: RuntimeException -> 0x00ec, TRY_LEAVE, TryCatch #2 {RuntimeException -> 0x00ec, blocks: (B:78:0x00e0, B:80:0x00e6), top: B:91:0x00e0 }] */
    public final C0410w s(Context context) {
        int i8;
        C0410w c0410w;
        Animator animatorLoadAnimator;
        int iY;
        if (this.f7885d) {
            return this.f7886e;
        }
        d0 d0Var = (d0) this.f24905a;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = d0Var.f7863c;
        boolean z7 = d0Var.f7861a == 2;
        C0405q c0405q = abstractComponentCallbacksC0406s.f7966p0;
        int i9 = c0405q == null ? 0 : c0405q.f7920f;
        if (this.f7884c) {
            if (z7) {
                if (c0405q == null) {
                    i8 = 0;
                } else {
                    i8 = c0405q.f7918d;
                }
            } else if (c0405q == null) {
                i8 = 0;
            } else {
                i8 = c0405q.f7919e;
            }
        } else if (z7) {
            if (c0405q == null) {
                i8 = 0;
            } else {
                i8 = c0405q.f7916b;
            }
        } else if (c0405q == null) {
            i8 = 0;
        } else {
            i8 = c0405q.f7917c;
        }
        abstractComponentCallbacksC0406s.O(0, 0, 0, 0);
        ViewGroup viewGroup = abstractComponentCallbacksC0406s.f7962l0;
        C0410w c0410w2 = null;
        if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
            abstractComponentCallbacksC0406s.f7962l0.setTag(R.id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = abstractComponentCallbacksC0406s.f7962l0;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            if (i8 == 0 && i9 != 0) {
                if (i9 == 4097) {
                    iY = z7 ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
                } else if (i9 == 8194) {
                    iY = z7 ? R.animator.fragment_close_enter : R.animator.fragment_close_exit;
                } else if (i9 == 8197) {
                    iY = z7 ? Q3.b.y(context, android.R.attr.activityCloseEnterAnimation) : Q3.b.y(context, android.R.attr.activityCloseExitAnimation);
                } else if (i9 == 4099) {
                    iY = z7 ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit;
                } else if (i9 != 4100) {
                    i8 = -1;
                } else {
                    iY = z7 ? Q3.b.y(context, android.R.attr.activityOpenEnterAnimation) : Q3.b.y(context, android.R.attr.activityOpenExitAnimation);
                }
                i8 = iY;
            }
            if (i8 != 0) {
                boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(i8));
                if (zEquals) {
                    try {
                        Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, i8);
                        if (animationLoadAnimation != null) {
                            c0410w = new C0410w(animationLoadAnimation);
                            c0410w2 = c0410w;
                        }
                    } catch (Resources.NotFoundException e8) {
                        throw e8;
                    } catch (RuntimeException unused) {
                        try {
                            animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i8);
                            if (animatorLoadAnimator != null) {
                                c0410w = new C0410w(animatorLoadAnimator);
                                c0410w2 = c0410w;
                            }
                        } catch (RuntimeException e9) {
                            if (zEquals) {
                                throw e9;
                            }
                            Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, i8);
                            if (animationLoadAnimation2 != null) {
                                c0410w2 = new C0410w(animationLoadAnimation2);
                            }
                        }
                    }
                } else {
                    animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i8);
                    if (animatorLoadAnimator != null) {
                        c0410w = new C0410w(animatorLoadAnimator);
                        c0410w2 = c0410w;
                    }
                }
            }
        }
        this.f7886e = c0410w2;
        this.f7885d = true;
        return c0410w2;
    }
}
