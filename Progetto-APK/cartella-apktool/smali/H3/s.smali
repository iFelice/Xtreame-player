.class public final LH3/s;
.super LH3/e;
.source "SourceFile"


# instance fields
.field public final synthetic H:I

.field public final synthetic I:Lg4/i;


# direct methods
.method public constructor <init>(Lg4/i;I)V
    .locals 0

    .line 1
    iput p2, p0, LH3/s;->H:I

    .line 2
    .line 3
    iput-object p1, p0, LH3/s;->I:Lg4/i;

    .line 4
    .line 5
    const-string p1, "com.google.android.gms.cast.internal.IBundleCallback"

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/o;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
