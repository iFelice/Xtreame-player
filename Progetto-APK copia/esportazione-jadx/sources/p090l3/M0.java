package p090l3;

import R3.d;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.ads.C1089b9;
import com.google.android.gms.internal.ads.C1571kc;
import com.google.android.gms.internal.ads.InterfaceC1037a9;
import com.google.android.gms.internal.ads.InterfaceC1675mc;
import com.google.android.gms.internal.ads.Y8;

/* JADX INFO: loaded from: classes.dex */
public final class M0 extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f26495a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M0(int i8) {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
        this.f26495a = i8;
        if (i8 == 1) {
            super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
            return;
        }
        if (i8 == 2) {
            super("com.google.android.gms.ads.AdPreloaderRemoteCreatorImpl");
            return;
        }
        if (i8 == 3) {
            super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
            return;
        }
        if (i8 == 4) {
            super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
        } else if (i8 != 5) {
        } else {
            super("com.google.android.gms.ads.AdOverlayCreatorImpl");
        }
    }

    @Override // R3.d
    public final Object getRemoteCreator(IBinder iBinder) {
        switch (this.f26495a) {
            case 0:
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
                return iInterfaceQueryLocalInterface instanceof C3078f0 ? (C3078f0) iInterfaceQueryLocalInterface : new C3078f0(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator", 0);
            case 1:
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface2 = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
                return iInterfaceQueryLocalInterface2 instanceof G ? (G) iInterfaceQueryLocalInterface2 : new G(iBinder);
            case 2:
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface3 = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloaderCreator");
                return iInterfaceQueryLocalInterface3 instanceof Q ? (Q) iInterfaceQueryLocalInterface3 : new Q(iBinder, "com.google.android.gms.ads.internal.client.IAdPreloaderCreator", 0);
            case 3:
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface4 = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
                return iInterfaceQueryLocalInterface4 instanceof InterfaceC1037a9 ? (InterfaceC1037a9) iInterfaceQueryLocalInterface4 : new Y8(iBinder);
            case 4:
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface5 = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
                return iInterfaceQueryLocalInterface5 instanceof C1089b9 ? (C1089b9) iInterfaceQueryLocalInterface5 : new C1089b9(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator", 0);
            default:
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface6 = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
                return iInterfaceQueryLocalInterface6 instanceof InterfaceC1675mc ? (InterfaceC1675mc) iInterfaceQueryLocalInterface6 : new C1571kc(iBinder);
        }
    }
}
