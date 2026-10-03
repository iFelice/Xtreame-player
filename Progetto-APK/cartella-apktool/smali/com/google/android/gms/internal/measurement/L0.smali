.class public final Lcom/google/android/gms/internal/measurement/L0;
.super Lcom/google/android/gms/internal/measurement/s2;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/L0;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/measurement/y2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/L0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/L0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/L0;->zzb:Lcom/google/android/gms/internal/measurement/L0;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/L0;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/s2;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/s2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/s2;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/W2;->K:Lcom/google/android/gms/internal/measurement/W2;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/L0;->zzd:Lcom/google/android/gms/internal/measurement/y2;

    .line 7
    .line 8
    return-void
.end method

.method public static bridge synthetic q()Lcom/google/android/gms/internal/measurement/L0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/L0;->zzb:Lcom/google/android/gms/internal/measurement/L0;

    return-object v0
.end method


# virtual methods
.method public final p(I)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq p1, v2, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    sget-object p1, Lcom/google/android/gms/internal/measurement/L0;->zzb:Lcom/google/android/gms/internal/measurement/L0;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    throw p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/t0;

    .line 25
    .line 26
    const/4 v0, 0x7

    .line 27
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/t0;-><init>(II)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/L0;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/L0;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v0, "zzd"

    .line 40
    .line 41
    aput-object v0, p1, v1

    .line 42
    .line 43
    sget-object v0, Lcom/google/android/gms/internal/measurement/L0;->zzb:Lcom/google/android/gms/internal/measurement/L0;

    .line 44
    .line 45
    new-instance v1, Lcom/google/android/gms/internal/measurement/X2;

    .line 46
    .line 47
    const-string v2, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 48
    .line 49
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/X2;-><init>(Lcom/google/android/gms/internal/measurement/s2;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method
