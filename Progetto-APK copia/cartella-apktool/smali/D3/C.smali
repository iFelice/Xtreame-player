.class public final LD3/C;
.super Lcom/google/android/gms/internal/cast/o;
.source "SourceFile"


# instance fields
.field public final synthetic H:Lcom/google/android/gms/internal/cast/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/e;)V
    .locals 1

    .line 1
    iput-object p1, p0, LD3/C;->H:Lcom/google/android/gms/internal/cast/e;

    .line 2
    .line 3
    const-string p1, "com.google.android.gms.cast.framework.ISessionProvider"

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/o;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final Y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, LD3/C;->H:Lcom/google/android/gms/internal/cast/e;

    .line 3
    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 p2, 0x2

    .line 7
    if-eq p1, p2, :cond_2

    .line 8
    .line 9
    const/4 p2, 0x3

    .line 10
    if-eq p1, p2, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x4

    .line 13
    if-eq p1, p2, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    .line 19
    .line 20
    const p1, 0xbdfcb8

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, v1, Lcom/google/android/gms/internal/cast/e;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object p1, v1, Lcom/google/android/gms/internal/cast/e;->d:LD3/b;

    .line 37
    .line 38
    iget-boolean p1, p1, LD3/b;->K:Z

    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    .line 42
    .line 43
    sget p2, Lcom/google/android/gms/internal/cast/u;->a:I

    .line 44
    .line 45
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance p1, LD3/c;

    .line 60
    .line 61
    new-instance v7, LF3/l;

    .line 62
    .line 63
    iget-object p2, v1, Lcom/google/android/gms/internal/cast/e;->e:Lcom/google/android/gms/internal/cast/q;

    .line 64
    .line 65
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/e;->a:Landroid/content/Context;

    .line 66
    .line 67
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/e;->d:LD3/b;

    .line 68
    .line 69
    invoke-direct {v7, v2, v3, p2}, LF3/l;-><init>(Landroid/content/Context;LD3/b;Lcom/google/android/gms/internal/cast/q;)V

    .line 70
    .line 71
    .line 72
    iget-object v5, v1, Lcom/google/android/gms/internal/cast/e;->d:LD3/b;

    .line 73
    .line 74
    iget-object v6, v1, Lcom/google/android/gms/internal/cast/e;->e:Lcom/google/android/gms/internal/cast/q;

    .line 75
    .line 76
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/e;->a:Landroid/content/Context;

    .line 77
    .line 78
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/e;->b:Ljava/lang/String;

    .line 79
    .line 80
    move-object v1, p1

    .line 81
    invoke-direct/range {v1 .. v7}, LD3/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LD3/b;Lcom/google/android/gms/internal/cast/q;LF3/l;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, LD3/f;->c()LR3/a;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    .line 90
    .line 91
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/cast/u;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    return v0
.end method
