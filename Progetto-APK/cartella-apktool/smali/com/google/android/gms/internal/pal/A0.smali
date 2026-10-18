.class public final Lcom/google/android/gms/internal/pal/A0;
.super Lcom/google/android/gms/internal/pal/C0;
.source "SourceFile"


# static fields
.field public static final H:Lcom/google/android/gms/internal/pal/A0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/A0;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/pal/A0;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/pal/A0;->H:Lcom/google/android/gms/internal/pal/A0;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/pal/B0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/pal/C0;->G:J

    .line 5
    .line 6
    return-void
.end method

.method public static a(J)Lcom/google/android/gms/internal/pal/A0;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/google/android/gms/internal/pal/A0;->H:Lcom/google/android/gms/internal/pal/A0;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pal/A0;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/pal/A0;-><init>(J)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static b(J)Lcom/google/android/gms/internal/pal/A0;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/A0;

    .line 2
    .line 3
    const v1, 0x36ee80

    .line 4
    .line 5
    .line 6
    invoke-static {v1, p0, p1}, Lcom/google/android/gms/internal/pal/y4;->d(IJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/pal/A0;-><init>(J)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
