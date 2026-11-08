package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class P4 implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f15329G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Application f15330H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final WeakReference f15331I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f15332J;

    public P4(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks, int i8) {
        this.f15329G = i8;
        if (i8 == 1) {
            this.f15332J = false;
            this.f15331I = new WeakReference(activityLifecycleCallbacks);
            this.f15330H = application;
        } else if (i8 != 2) {
            this.f15332J = false;
            this.f15331I = new WeakReference(activityLifecycleCallbacks);
            this.f15330H = application;
        } else {
            this.f15332J = false;
            this.f15331I = new WeakReference(activityLifecycleCallbacks);
            this.f15330H = application;
        }
    }

    public final void a(O4 o4) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f15331I.get();
            if (activityLifecycleCallbacks != null) {
                o4.zza(activityLifecycleCallbacks);
            } else {
                if (this.f15332J) {
                    return;
                }
                this.f15330H.unregisterActivityLifecycleCallbacks(this);
                this.f15332J = true;
            }
        } catch (Exception unused) {
        }
    }

    public final void b(K5 k8) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f15331I.get();
            if (activityLifecycleCallbacks != null) {
                k8.zza(activityLifecycleCallbacks);
            } else {
                if (this.f15332J) {
                    return;
                }
                this.f15330H.unregisterActivityLifecycleCallbacks(this);
                this.f15332J = true;
            }
        } catch (Exception e8) {
            p120p3.h.e("Error while dispatching lifecycle callback.", e8);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        WeakReference weakReference = this.f15331I;
        int i8 = this.f15329G;
        Application application = this.f15330H;
        switch (i8) {
            case 0:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) weakReference.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivityCreated(activity, bundle);
                    } else if (!this.f15332J) {
                        application.unregisterActivityLifecycleCallbacks(this);
                        this.f15332J = true;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            case 1:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks2 = (Application.ActivityLifecycleCallbacks) weakReference.get();
                    if (activityLifecycleCallbacks2 != null) {
                        activityLifecycleCallbacks2.onActivityCreated(activity, bundle);
                    } else if (!this.f15332J) {
                        application.unregisterActivityLifecycleCallbacks(this);
                        this.f15332J = true;
                    }
                } catch (Exception e8) {
                    p120p3.h.e("Error while dispatching lifecycle callback.", e8);
                    return;
                }
                break;
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks3 = (Application.ActivityLifecycleCallbacks) weakReference.get();
                    if (activityLifecycleCallbacks3 != null) {
                        activityLifecycleCallbacks3.onActivityCreated(activity, bundle);
                    } else if (!this.f15332J) {
                        application.unregisterActivityLifecycleCallbacks(this);
                        this.f15332J = true;
                    }
                } catch (Exception unused2) {
                    return;
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        switch (this.f15329G) {
            case 0:
                a(new O4(activity, 4));
                break;
            case 1:
                b(new O4(activity, 9));
                break;
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f15331I.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivityDestroyed(activity);
                    } else if (!this.f15332J) {
                        this.f15330H.unregisterActivityLifecycleCallbacks(this);
                        this.f15332J = true;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        switch (this.f15329G) {
            case 0:
                a(new O4(activity, 2));
                break;
            case 1:
                b(new O4(activity, 7));
                break;
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f15331I.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivityPaused(activity);
                    } else if (!this.f15332J) {
                        this.f15330H.unregisterActivityLifecycleCallbacks(this);
                        this.f15332J = true;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        switch (this.f15329G) {
            case 0:
                a(new O4(activity, 1));
                break;
            case 1:
                b(new O4(activity, 6));
                break;
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f15331I.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivityResumed(activity);
                    } else if (!this.f15332J) {
                        this.f15330H.unregisterActivityLifecycleCallbacks(this);
                        this.f15332J = true;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        WeakReference weakReference = this.f15331I;
        int i8 = this.f15329G;
        Application application = this.f15330H;
        switch (i8) {
            case 0:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) weakReference.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivitySaveInstanceState(activity, bundle);
                    } else if (!this.f15332J) {
                        application.unregisterActivityLifecycleCallbacks(this);
                        this.f15332J = true;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            case 1:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks2 = (Application.ActivityLifecycleCallbacks) weakReference.get();
                    if (activityLifecycleCallbacks2 != null) {
                        activityLifecycleCallbacks2.onActivitySaveInstanceState(activity, bundle);
                    } else if (!this.f15332J) {
                        application.unregisterActivityLifecycleCallbacks(this);
                        this.f15332J = true;
                    }
                } catch (Exception e8) {
                    p120p3.h.e("Error while dispatching lifecycle callback.", e8);
                    return;
                }
                break;
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks3 = (Application.ActivityLifecycleCallbacks) weakReference.get();
                    if (activityLifecycleCallbacks3 != null) {
                        activityLifecycleCallbacks3.onActivitySaveInstanceState(activity, bundle);
                    } else if (!this.f15332J) {
                        application.unregisterActivityLifecycleCallbacks(this);
                        this.f15332J = true;
                    }
                } catch (Exception unused2) {
                    return;
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        switch (this.f15329G) {
            case 0:
                a(new O4(activity, 0));
                break;
            case 1:
                b(new O4(activity, 5));
                break;
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f15331I.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivityStarted(activity);
                    } else if (!this.f15332J) {
                        this.f15330H.unregisterActivityLifecycleCallbacks(this);
                        this.f15332J = true;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        switch (this.f15329G) {
            case 0:
                a(new O4(activity, 3));
                break;
            case 1:
                b(new O4(activity, 8));
                break;
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f15331I.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivityStopped(activity);
                    } else if (!this.f15332J) {
                        this.f15330H.unregisterActivityLifecycleCallbacks(this);
                        this.f15332J = true;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
        }
    }
}
