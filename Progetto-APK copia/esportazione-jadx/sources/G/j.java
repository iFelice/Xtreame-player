package G;

import K.l;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import org.videolan.libvlc.media.MediaPlayer;
import p039f.S;

/* JADX INFO: loaded from: classes.dex */
public final class j extends S {
    public static Font V(FontFamily fontFamily, int i8) {
        FontStyle fontStyle = new FontStyle((i8 & 1) != 0 ? MediaPlayer.MEDIA_INFO_VIDEO_TRACK_LAGGING : 400, (i8 & 2) != 0 ? 1 : 0);
        Font font = fontFamily.getFont(0);
        int iX = X(fontStyle, font.getStyle());
        for (int i9 = 1; i9 < fontFamily.getSize(); i9++) {
            Font font2 = fontFamily.getFont(i9);
            int iX2 = X(fontStyle, font2.getStyle());
            if (iX2 < iX) {
                font = font2;
                iX = iX2;
            }
        }
        return font;
    }

    public static FontFamily W(l[] lVarArr, ContentResolver contentResolver) {
        FontFamily.Builder builder = null;
        for (l lVar : lVarArr) {
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(lVar.f4296a, "r", null);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                    }
                } else {
                    try {
                        Font fontBuild = new Font.Builder(parcelFileDescriptorOpenFileDescriptor).setWeight(lVar.f4298c).setSlant(lVar.f4299d ? 1 : 0).setTtcIndex(lVar.f4297b).build();
                        if (builder == null) {
                            builder = new FontFamily.Builder(fontBuild);
                        } else {
                            builder.addFont(fontBuild);
                        }
                    } catch (Throwable th) {
                        try {
                            parcelFileDescriptorOpenFileDescriptor.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                parcelFileDescriptorOpenFileDescriptor.close();
            } catch (IOException e8) {
                Log.w("TypefaceCompatApi29Impl", "Font load failed", e8);
            }
        }
        if (builder == null) {
            return null;
        }
        return builder.build();
    }

    public static int X(FontStyle fontStyle, FontStyle fontStyle2) {
        return (Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100) + (fontStyle.getSlant() == fontStyle2.getSlant() ? 0 : 2);
    }

    @Override // p039f.S
    public final Typeface G(Context context, F.f fVar, Resources resources, int i8) {
        try {
            FontFamily.Builder builder = null;
            for (F.g gVar : fVar.f2964a) {
                try {
                    Font fontBuild = new Font.Builder(resources, gVar.f2970f).setWeight(gVar.f2966b).setSlant(gVar.f2967c ? 1 : 0).setTtcIndex(gVar.f2969e).setFontVariationSettings(gVar.f2968d).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(fontBuild);
                    } else {
                        builder.addFont(fontBuild);
                    }
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            FontFamily fontFamilyBuild = builder.build();
            return new Typeface.CustomFallbackBuilder(fontFamilyBuild).setStyle(V(fontFamilyBuild, i8).getStyle()).build();
        } catch (Exception e8) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e8);
            return null;
        }
    }

    @Override // p039f.S
    public final Typeface H(Context context, l[] lVarArr, int i8) {
        try {
            FontFamily fontFamilyW = W(lVarArr, context.getContentResolver());
            if (fontFamilyW == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(fontFamilyW).setStyle(V(fontFamilyW, i8).getStyle()).build();
        } catch (Exception e8) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e8);
            return null;
        }
    }

    @Override // p039f.S
    public final Typeface I(Context context, List list, int i8) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            FontFamily fontFamilyW = W((l[]) list.get(0), contentResolver);
            if (fontFamilyW == null) {
                return null;
            }
            Typeface.CustomFallbackBuilder customFallbackBuilder = new Typeface.CustomFallbackBuilder(fontFamilyW);
            for (int i9 = 1; i9 < list.size(); i9++) {
                FontFamily fontFamilyW2 = W((l[]) list.get(i9), contentResolver);
                if (fontFamilyW2 != null) {
                    customFallbackBuilder.addCustomFallback(fontFamilyW2);
                }
            }
            return customFallbackBuilder.setStyle(V(fontFamilyW, i8).getStyle()).build();
        } catch (Exception e8) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e8);
            return null;
        }
    }

    @Override // p039f.S
    public final Typeface J(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // p039f.S
    public final Typeface K(Context context, Resources resources, int i8, String str, int i9) {
        try {
            Font fontBuild = new Font.Builder(resources, i8).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (Exception e8) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e8);
            return null;
        }
    }

    @Override // p039f.S
    public final l N(int i8, l[] lVarArr) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
