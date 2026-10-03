package b7;

import android.view.View;
import android.widget.FrameLayout;
import org.videolan.libvlc.MediaPlayer;
import p141s0.InterfaceC3183h;
import pe.hf.black20.MultiScreenActivityEXO;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class V implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10239G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ MultiScreenActivityEXO f10240H;

    public /* synthetic */ V(MultiScreenActivityEXO multiScreenActivityEXO, int i8) {
        this.f10239G = i8;
        this.f10240H = multiScreenActivityEXO;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10239G;
        MultiScreenActivityEXO multiScreenActivityEXO = this.f10240H;
        switch (i8) {
            case 0:
                MultiScreenActivityEXO.b(multiScreenActivityEXO);
                break;
            case 1:
                MultiScreenActivityEXO.b(multiScreenActivityEXO);
                break;
            case 2:
                MultiScreenActivityEXO.b(multiScreenActivityEXO);
                break;
            case 3:
                MultiScreenActivityEXO.b(multiScreenActivityEXO);
                break;
            case 4:
                if (!multiScreenActivityEXO.f28665E1) {
                    MediaPlayer mediaPlayer = multiScreenActivityEXO.f28706T;
                    if (mediaPlayer != null) {
                        if (multiScreenActivityEXO.f28705S0 == 0) {
                            multiScreenActivityEXO.f28705S0 = 95;
                            mediaPlayer.setVolume(95);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_volume, multiScreenActivityEXO.f28750p0);
                        } else {
                            multiScreenActivityEXO.f28705S0 = 0;
                            mediaPlayer.setVolume(0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28750p0);
                        }
                    }
                    MediaPlayer mediaPlayer2 = multiScreenActivityEXO.f28708U;
                    if (mediaPlayer2 != null && multiScreenActivityEXO.f28715X0 == 1) {
                        multiScreenActivityEXO.f28707T0 = 0;
                        mediaPlayer2.setVolume(0);
                    }
                    MediaPlayer mediaPlayer3 = multiScreenActivityEXO.f28710V;
                    if (mediaPlayer3 != null && multiScreenActivityEXO.f28717Y0 == 1) {
                        multiScreenActivityEXO.f28709U0 = 0;
                        mediaPlayer3.setVolume(0);
                    }
                    MediaPlayer mediaPlayer4 = multiScreenActivityEXO.f28712W;
                    if (mediaPlayer4 != null && multiScreenActivityEXO.f28719Z0 == 1) {
                        multiScreenActivityEXO.f28711V0 = 0;
                        mediaPlayer4.setVolume(0);
                    }
                    p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28752q0);
                    p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28754r0);
                    p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28756s0);
                } else {
                    B0.O o4 = multiScreenActivityEXO.f28682K1;
                    if (o4 != null) {
                        if (multiScreenActivityEXO.f28693O0 != 0.0f) {
                            MultiScreenActivityEXO.a(multiScreenActivityEXO);
                        } else {
                            multiScreenActivityEXO.f28693O0 = 0.9f;
                            if (multiScreenActivityEXO.f28713W0 == 1) {
                                o4.W(0.9f);
                            }
                            B0.O o7 = multiScreenActivityEXO.f28685L1;
                            if (o7 != null && multiScreenActivityEXO.f28715X0 == 1) {
                                o7.W(0.0f);
                            }
                            B0.O o8 = multiScreenActivityEXO.f28688M1;
                            if (o8 != null && multiScreenActivityEXO.f28717Y0 == 1) {
                                o8.W(0.0f);
                            }
                            B0.O o9 = multiScreenActivityEXO.f28691N1;
                            if (o9 != null && multiScreenActivityEXO.f28719Z0 == 1) {
                                o9.W(0.0f);
                            }
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_volume, multiScreenActivityEXO.f28750p0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28752q0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28754r0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28756s0);
                        }
                    }
                }
                break;
            case 5:
                if (!multiScreenActivityEXO.f28665E1) {
                    MediaPlayer mediaPlayer5 = multiScreenActivityEXO.f28708U;
                    if (mediaPlayer5 != null) {
                        if (multiScreenActivityEXO.f28707T0 == 0) {
                            multiScreenActivityEXO.f28707T0 = 95;
                            mediaPlayer5.setVolume(95);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_volume, multiScreenActivityEXO.f28752q0);
                        } else {
                            multiScreenActivityEXO.f28707T0 = 0;
                            mediaPlayer5.setVolume(0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28752q0);
                        }
                    }
                    MediaPlayer mediaPlayer6 = multiScreenActivityEXO.f28706T;
                    if (mediaPlayer6 != null && multiScreenActivityEXO.f28713W0 == 1) {
                        multiScreenActivityEXO.f28705S0 = 0;
                        mediaPlayer6.setVolume(0);
                    }
                    MediaPlayer mediaPlayer7 = multiScreenActivityEXO.f28710V;
                    if (mediaPlayer7 != null && multiScreenActivityEXO.f28717Y0 == 1) {
                        multiScreenActivityEXO.f28709U0 = 0;
                        mediaPlayer7.setVolume(0);
                    }
                    MediaPlayer mediaPlayer8 = multiScreenActivityEXO.f28712W;
                    if (mediaPlayer8 != null && multiScreenActivityEXO.f28719Z0 == 1) {
                        multiScreenActivityEXO.f28711V0 = 0;
                        mediaPlayer8.setVolume(0);
                    }
                    p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28750p0);
                    p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28754r0);
                    p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28756s0);
                } else {
                    B0.O o10 = multiScreenActivityEXO.f28685L1;
                    if (o10 != null) {
                        if (multiScreenActivityEXO.f28696P0 != 0.0f) {
                            MultiScreenActivityEXO.a(multiScreenActivityEXO);
                        } else {
                            multiScreenActivityEXO.f28696P0 = 0.9f;
                            if (multiScreenActivityEXO.f28715X0 == 1) {
                                o10.W(0.9f);
                            }
                            B0.O o11 = multiScreenActivityEXO.f28682K1;
                            if (o11 != null && multiScreenActivityEXO.f28713W0 == 1) {
                                o11.W(0.0f);
                            }
                            B0.O o12 = multiScreenActivityEXO.f28688M1;
                            if (o12 != null && multiScreenActivityEXO.f28717Y0 == 1) {
                                o12.W(0.0f);
                            }
                            B0.O o13 = multiScreenActivityEXO.f28691N1;
                            if (o13 != null && multiScreenActivityEXO.f28719Z0 == 1) {
                                o13.W(0.0f);
                            }
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28750p0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_volume, multiScreenActivityEXO.f28752q0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28754r0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28756s0);
                        }
                    }
                }
                break;
            case 6:
                if (!multiScreenActivityEXO.f28665E1) {
                    MediaPlayer mediaPlayer9 = multiScreenActivityEXO.f28710V;
                    if (mediaPlayer9 != null) {
                        if (multiScreenActivityEXO.f28709U0 == 0) {
                            multiScreenActivityEXO.f28709U0 = 95;
                            mediaPlayer9.setVolume(95);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_volume, multiScreenActivityEXO.f28754r0);
                        } else {
                            multiScreenActivityEXO.f28709U0 = 0;
                            mediaPlayer9.setVolume(0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28754r0);
                        }
                    }
                    MediaPlayer mediaPlayer10 = multiScreenActivityEXO.f28706T;
                    if (mediaPlayer10 != null && multiScreenActivityEXO.f28713W0 == 1) {
                        multiScreenActivityEXO.f28705S0 = 0;
                        mediaPlayer10.setVolume(0);
                    }
                    MediaPlayer mediaPlayer11 = multiScreenActivityEXO.f28708U;
                    if (mediaPlayer11 != null && multiScreenActivityEXO.f28715X0 == 1) {
                        multiScreenActivityEXO.f28707T0 = 0;
                        mediaPlayer11.setVolume(0);
                    }
                    MediaPlayer mediaPlayer12 = multiScreenActivityEXO.f28712W;
                    if (mediaPlayer12 != null && multiScreenActivityEXO.f28719Z0 == 1) {
                        multiScreenActivityEXO.f28711V0 = 0;
                        mediaPlayer12.setVolume(0);
                    }
                    p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28750p0);
                    p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28752q0);
                    p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28756s0);
                } else {
                    B0.O o14 = multiScreenActivityEXO.f28688M1;
                    if (o14 != null) {
                        if (multiScreenActivityEXO.f28699Q0 != 0.0f) {
                            MultiScreenActivityEXO.a(multiScreenActivityEXO);
                        } else {
                            multiScreenActivityEXO.f28699Q0 = 0.9f;
                            if (multiScreenActivityEXO.f28717Y0 == 1) {
                                o14.W(0.9f);
                            }
                            B0.O o15 = multiScreenActivityEXO.f28682K1;
                            if (o15 != null && multiScreenActivityEXO.f28713W0 == 1) {
                                o15.W(0.0f);
                            }
                            B0.O o16 = multiScreenActivityEXO.f28685L1;
                            if (o16 != null && multiScreenActivityEXO.f28715X0 == 1) {
                                o16.W(0.0f);
                            }
                            if (multiScreenActivityEXO.f28688M1 != null && multiScreenActivityEXO.f28719Z0 == 1) {
                                multiScreenActivityEXO.f28691N1.W(0.0f);
                            }
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28750p0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28752q0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_volume, multiScreenActivityEXO.f28754r0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28756s0);
                        }
                    }
                }
                break;
            case 7:
                if (!multiScreenActivityEXO.f28665E1) {
                    MediaPlayer mediaPlayer13 = multiScreenActivityEXO.f28712W;
                    if (mediaPlayer13 != null) {
                        if (multiScreenActivityEXO.f28711V0 == 0) {
                            multiScreenActivityEXO.f28711V0 = 95;
                            mediaPlayer13.setVolume(95);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_volume, multiScreenActivityEXO.f28756s0);
                        } else {
                            multiScreenActivityEXO.f28711V0 = 0;
                            mediaPlayer13.setVolume(0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28756s0);
                        }
                    }
                    MediaPlayer mediaPlayer14 = multiScreenActivityEXO.f28706T;
                    if (mediaPlayer14 != null && multiScreenActivityEXO.f28713W0 == 1) {
                        multiScreenActivityEXO.f28705S0 = 0;
                        mediaPlayer14.setVolume(0);
                    }
                    MediaPlayer mediaPlayer15 = multiScreenActivityEXO.f28708U;
                    if (mediaPlayer15 != null && multiScreenActivityEXO.f28715X0 == 1) {
                        multiScreenActivityEXO.f28707T0 = 0;
                        mediaPlayer15.setVolume(0);
                    }
                    MediaPlayer mediaPlayer16 = multiScreenActivityEXO.f28710V;
                    if (mediaPlayer16 != null && multiScreenActivityEXO.f28717Y0 == 1) {
                        multiScreenActivityEXO.f28709U0 = 0;
                        mediaPlayer16.setVolume(0);
                    }
                    p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28750p0);
                    p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28752q0);
                    p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28754r0);
                } else {
                    B0.O o17 = multiScreenActivityEXO.f28691N1;
                    if (o17 != null) {
                        if (multiScreenActivityEXO.f28702R0 != 0.0f) {
                            MultiScreenActivityEXO.a(multiScreenActivityEXO);
                        } else {
                            multiScreenActivityEXO.f28702R0 = 0.9f;
                            if (multiScreenActivityEXO.f28719Z0 == 1) {
                                o17.W(0.9f);
                            }
                            B0.O o18 = multiScreenActivityEXO.f28682K1;
                            if (o18 != null && multiScreenActivityEXO.f28713W0 == 1) {
                                o18.W(0.0f);
                            }
                            B0.O o19 = multiScreenActivityEXO.f28685L1;
                            if (o19 != null && multiScreenActivityEXO.f28715X0 == 1) {
                                o19.W(0.0f);
                            }
                            B0.O o20 = multiScreenActivityEXO.f28688M1;
                            if (o20 != null && multiScreenActivityEXO.f28717Y0 == 1) {
                                o20.W(0.0f);
                            }
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28750p0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28752q0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28754r0);
                            p000a.r.r(multiScreenActivityEXO, R.drawable.multi_volume, multiScreenActivityEXO.f28756s0);
                        }
                    }
                }
                break;
            case 8:
                multiScreenActivityEXO.f28734h0.requestFocus();
                multiScreenActivityEXO.f28730f0.setVisibility(8);
                multiScreenActivityEXO.p();
                break;
            case 9:
                multiScreenActivityEXO.f28734h0.requestFocus();
                multiScreenActivityEXO.f28730f0.setVisibility(8);
                multiScreenActivityEXO.f28672H0.setFocusable(false);
                multiScreenActivityEXO.f28675I0.setFocusable(false);
                int i9 = multiScreenActivityEXO.f28681K0 / 2;
                int i10 = i9 - (multiScreenActivityEXO.f28684L0 * 2);
                int i11 = (int) (((double) i9) * 0.56d);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28714X.getLayoutParams();
                layoutParams.width = i10;
                layoutParams.height = i11;
                layoutParams.setMargins(multiScreenActivityEXO.f28684L0 * 2, 0, 0, 0);
                layoutParams.gravity = 19;
                multiScreenActivityEXO.f28714X.setLayoutParams(layoutParams);
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28716Y.getLayoutParams();
                layoutParams2.width = i10;
                layoutParams2.height = i11;
                int i12 = multiScreenActivityEXO.f28681K0 / 2;
                int i13 = multiScreenActivityEXO.f28684L0 * 2;
                layoutParams2.setMargins(i12 + i13, 0, i13, 0);
                layoutParams2.gravity = 21;
                multiScreenActivityEXO.f28716Y.setLayoutParams(layoutParams2);
                multiScreenActivityEXO.f28666F0.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28669G0.getLayoutParams();
                int i14 = multiScreenActivityEXO.f28681K0 / 3;
                layoutParams3.height = (int) (((double) i14) * 0.56d);
                layoutParams3.width = i14;
                layoutParams3.setMargins(0, 0, 0, 0);
                layoutParams3.gravity = 85;
                multiScreenActivityEXO.f28669G0.setLayoutParams(layoutParams3);
                FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28718Z.getLayoutParams();
                layoutParams4.height = 0;
                layoutParams4.width = 0;
                layoutParams4.setMargins(0, 0, 0, 0);
                multiScreenActivityEXO.f28718Z.setLayoutParams(layoutParams4);
                FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28720a0.getLayoutParams();
                layoutParams5.height = 0;
                layoutParams5.width = 0;
                layoutParams5.setMargins(0, 0, 0, 0);
                multiScreenActivityEXO.f28720a0.setLayoutParams(layoutParams5);
                FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28672H0.getLayoutParams();
                layoutParams6.height = 0;
                layoutParams6.width = 0;
                layoutParams6.setMargins(0, 0, 0, 0);
                multiScreenActivityEXO.f28672H0.setLayoutParams(layoutParams6);
                FrameLayout.LayoutParams layoutParams7 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28675I0.getLayoutParams();
                layoutParams7.height = 0;
                layoutParams7.width = 0;
                layoutParams7.setMargins(0, 0, 0, 0);
                multiScreenActivityEXO.f28675I0.setLayoutParams(layoutParams7);
                multiScreenActivityEXO.u(i10, i11, i10, i11, 0, 0, 0, 0);
                break;
            case 10:
                multiScreenActivityEXO.f28734h0.requestFocus();
                multiScreenActivityEXO.f28730f0.setVisibility(8);
                multiScreenActivityEXO.f28672H0.setFocusable(true);
                multiScreenActivityEXO.f28675I0.setFocusable(true);
                int i15 = multiScreenActivityEXO.f28678J0;
                int i16 = multiScreenActivityEXO.f28681K0 / 3;
                int i17 = (int) (((double) i16) * 0.56d);
                int i18 = i15 - i17;
                int i19 = (int) (((double) i18) * 1.78d);
                int i20 = i17 - (multiScreenActivityEXO.f28684L0 * 2);
                FrameLayout.LayoutParams layoutParams8 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28714X.getLayoutParams();
                layoutParams8.height = i18;
                layoutParams8.width = i19;
                layoutParams8.setMargins(0, 0, 0, 0);
                layoutParams8.gravity = 49;
                multiScreenActivityEXO.f28714X.setLayoutParams(layoutParams8);
                FrameLayout.LayoutParams layoutParams9 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28716Y.getLayoutParams();
                layoutParams9.height = i20;
                layoutParams9.width = i16;
                layoutParams9.setMargins(0, 0, 0, 0);
                layoutParams9.gravity = 83;
                multiScreenActivityEXO.f28716Y.setLayoutParams(layoutParams9);
                FrameLayout.LayoutParams layoutParams10 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28718Z.getLayoutParams();
                layoutParams10.height = i20;
                layoutParams10.width = i16;
                int i21 = multiScreenActivityEXO.f28684L0 * 2;
                layoutParams10.setMargins(i21, 0, i21, 0);
                layoutParams10.gravity = 81;
                multiScreenActivityEXO.f28718Z.setLayoutParams(layoutParams10);
                FrameLayout.LayoutParams layoutParams11 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28720a0.getLayoutParams();
                layoutParams11.height = i20;
                layoutParams11.width = i16;
                layoutParams11.setMargins(0, 0, 0, 0);
                layoutParams11.gravity = 85;
                multiScreenActivityEXO.f28720a0.setLayoutParams(layoutParams11);
                FrameLayout.LayoutParams layoutParams12 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28666F0.getLayoutParams();
                int i22 = multiScreenActivityEXO.f28678J0 - ((int) (((double) (multiScreenActivityEXO.f28681K0 / 3)) * 0.56d));
                layoutParams12.height = i22;
                layoutParams12.width = (int) (((double) i22) * 1.78d);
                layoutParams12.setMargins(0, 0, 0, 0);
                layoutParams12.gravity = 49;
                multiScreenActivityEXO.f28666F0.setLayoutParams(layoutParams12);
                FrameLayout.LayoutParams layoutParams13 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28669G0.getLayoutParams();
                int i23 = multiScreenActivityEXO.f28681K0 / 3;
                layoutParams13.height = ((int) (((double) i23) * 0.56d)) - (multiScreenActivityEXO.f28684L0 * 2);
                layoutParams13.width = i23;
                layoutParams13.setMargins(0, 0, 0, 0);
                layoutParams13.gravity = 83;
                multiScreenActivityEXO.f28669G0.setLayoutParams(layoutParams13);
                FrameLayout.LayoutParams layoutParams14 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28672H0.getLayoutParams();
                int i24 = multiScreenActivityEXO.f28681K0 / 3;
                int i25 = multiScreenActivityEXO.f28684L0;
                int i26 = i25 * 2;
                layoutParams14.height = ((int) (((double) i24) * 0.56d)) - i26;
                layoutParams14.width = i24 - (i25 * 4);
                layoutParams14.setMargins(i26, 0, i26, 0);
                layoutParams14.gravity = 81;
                multiScreenActivityEXO.f28672H0.setLayoutParams(layoutParams14);
                FrameLayout.LayoutParams layoutParams15 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28675I0.getLayoutParams();
                int i27 = multiScreenActivityEXO.f28681K0 / 3;
                layoutParams15.height = ((int) (((double) i27) * 0.56d)) - (multiScreenActivityEXO.f28684L0 * 2);
                layoutParams15.width = i27;
                layoutParams15.setMargins(0, 0, 0, 0);
                layoutParams15.gravity = 85;
                multiScreenActivityEXO.f28675I0.setLayoutParams(layoutParams15);
                multiScreenActivityEXO.u(i19, i18, i16, i20, i16, i20, i16, i20);
                break;
            case 11:
                multiScreenActivityEXO.f28734h0.requestFocus();
                multiScreenActivityEXO.f28722b0.setVisibility(0);
                multiScreenActivityEXO.f28724c0.setVisibility(8);
                multiScreenActivityEXO.f28726d0.setVisibility(8);
                multiScreenActivityEXO.f28728e0.setVisibility(8);
                multiScreenActivityEXO.w();
                break;
            case 12:
                multiScreenActivityEXO.f28736i0.requestFocus();
                multiScreenActivityEXO.f28722b0.setVisibility(8);
                multiScreenActivityEXO.f28724c0.setVisibility(0);
                multiScreenActivityEXO.f28726d0.setVisibility(8);
                multiScreenActivityEXO.f28728e0.setVisibility(8);
                multiScreenActivityEXO.w();
                break;
            case 13:
                multiScreenActivityEXO.f28738j0.requestFocus();
                multiScreenActivityEXO.f28722b0.setVisibility(8);
                multiScreenActivityEXO.f28724c0.setVisibility(8);
                multiScreenActivityEXO.f28726d0.setVisibility(0);
                multiScreenActivityEXO.f28728e0.setVisibility(8);
                multiScreenActivityEXO.w();
                break;
            case 14:
                multiScreenActivityEXO.f28740k0.requestFocus();
                multiScreenActivityEXO.f28722b0.setVisibility(8);
                multiScreenActivityEXO.f28724c0.setVisibility(8);
                multiScreenActivityEXO.f28726d0.setVisibility(8);
                multiScreenActivityEXO.f28728e0.setVisibility(0);
                multiScreenActivityEXO.w();
                break;
            case 15:
                InterfaceC3183h interfaceC3183h = MultiScreenActivityEXO.f28655S1;
                multiScreenActivityEXO.o();
                break;
            case 16:
                InterfaceC3183h interfaceC3183h2 = MultiScreenActivityEXO.f28655S1;
                multiScreenActivityEXO.o();
                break;
            case 17:
                InterfaceC3183h interfaceC3183h3 = MultiScreenActivityEXO.f28655S1;
                multiScreenActivityEXO.o();
                break;
            case 18:
                int i28 = multiScreenActivityEXO.f28659B1;
                if (i28 == 0 || multiScreenActivityEXO.f28713W0 == 1 || multiScreenActivityEXO.f28717Y0 + multiScreenActivityEXO.f28715X0 + multiScreenActivityEXO.f28719Z0 == 0 || multiScreenActivityEXO.f28721a1 < i28) {
                    multiScreenActivityEXO.f28687M0 = "p1";
                    MultiScreenActivityEXO.c(multiScreenActivityEXO);
                } else {
                    multiScreenActivityEXO.m();
                }
                break;
            case 19:
                InterfaceC3183h interfaceC3183h4 = MultiScreenActivityEXO.f28655S1;
                multiScreenActivityEXO.o();
                break;
            case 20:
                InterfaceC3183h interfaceC3183h5 = MultiScreenActivityEXO.f28655S1;
                multiScreenActivityEXO.o();
                break;
            case 21:
                int i29 = multiScreenActivityEXO.f28659B1;
                if (i29 == 0 || multiScreenActivityEXO.f28715X0 == 1 || multiScreenActivityEXO.f28713W0 + multiScreenActivityEXO.f28717Y0 + multiScreenActivityEXO.f28719Z0 == 0 || multiScreenActivityEXO.f28721a1 < i29) {
                    multiScreenActivityEXO.f28687M0 = "p2";
                    MultiScreenActivityEXO.c(multiScreenActivityEXO);
                } else {
                    multiScreenActivityEXO.m();
                }
                break;
            case 22:
                int i30 = multiScreenActivityEXO.f28659B1;
                if (i30 == 0 || multiScreenActivityEXO.f28717Y0 == 1 || multiScreenActivityEXO.f28713W0 + multiScreenActivityEXO.f28715X0 + multiScreenActivityEXO.f28719Z0 == 0 || multiScreenActivityEXO.f28721a1 < i30) {
                    multiScreenActivityEXO.f28687M0 = "p3";
                    MultiScreenActivityEXO.c(multiScreenActivityEXO);
                } else {
                    multiScreenActivityEXO.m();
                }
                break;
            default:
                int i31 = multiScreenActivityEXO.f28659B1;
                if (i31 == 0 || multiScreenActivityEXO.f28719Z0 == 1 || multiScreenActivityEXO.f28715X0 + multiScreenActivityEXO.f28717Y0 + multiScreenActivityEXO.f28713W0 == 0 || multiScreenActivityEXO.f28721a1 < i31) {
                    multiScreenActivityEXO.f28687M0 = "p4";
                    MultiScreenActivityEXO.c(multiScreenActivityEXO);
                } else {
                    multiScreenActivityEXO.m();
                }
                break;
        }
    }
}
