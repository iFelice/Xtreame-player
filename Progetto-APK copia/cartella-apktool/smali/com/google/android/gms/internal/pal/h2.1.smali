.class public final Lcom/google/android/gms/internal/pal/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/google/android/gms/internal/pal/h2;


# instance fields
.field public final a:Lcom/google/android/gms/internal/pal/i2;

.field public final b:Lcom/google/android/gms/internal/pal/c;

.field public final c:Lcom/google/android/gms/internal/pal/k2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/h2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/pal/h2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/pal/h2;->d:Lcom/google/android/gms/internal/pal/h2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/i2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/pal/i2;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/pal/c;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/pal/c;-><init>(II)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/pal/k2;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/google/android/gms/internal/pal/k2;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/h2;->a:Lcom/google/android/gms/internal/pal/i2;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/google/android/gms/internal/pal/h2;->b:Lcom/google/android/gms/internal/pal/c;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/google/android/gms/internal/pal/h2;->c:Lcom/google/android/gms/internal/pal/k2;

    .line 26
    .line 27
    return-void
.end method
