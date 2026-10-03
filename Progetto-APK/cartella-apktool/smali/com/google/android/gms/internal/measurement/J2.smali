.class public final Lcom/google/android/gms/internal/measurement/J2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/internal/measurement/H2;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/I2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/H2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/J2;->b:Lcom/google/android/gms/internal/measurement/H2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/I2;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/measurement/V2;->c:Lcom/google/android/gms/internal/measurement/V2;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/O2;

    .line 7
    .line 8
    sget-object v2, Lcom/google/android/gms/internal/measurement/q2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 12
    .line 13
    sget-object v2, Lcom/google/android/gms/internal/measurement/J2;->b:Lcom/google/android/gms/internal/measurement/H2;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v2, v1, v3

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/I2;-><init>([Lcom/google/android/gms/internal/measurement/O2;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/J2;->a:Lcom/google/android/gms/internal/measurement/I2;

    .line 27
    .line 28
    return-void
.end method
