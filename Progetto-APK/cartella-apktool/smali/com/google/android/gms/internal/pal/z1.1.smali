.class public final Lcom/google/android/gms/internal/pal/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/pal/A1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/pal/A1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/pal/z1;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/pal/z1;->H:Lcom/google/android/gms/internal/pal/A1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/z1;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/z1;->H:Lcom/google/android/gms/internal/pal/A1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/A1;->a:Landroid/content/Context;

    .line 9
    .line 10
    sget-object v1, Lcom/google/android/gms/internal/pal/l2;->a:LO1/y;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/internal/pal/r1;

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/y4;->l(Lcom/google/android/gms/internal/pal/r1;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/z1;->H:Lcom/google/android/gms/internal/pal/A1;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/A1;->f:Lj3/b;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/A1;->i:Z

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    new-instance v1, Lj3/b;

    .line 36
    .line 37
    iget-object v2, v0, Lcom/google/android/gms/internal/pal/A1;->a:Landroid/content/Context;

    .line 38
    .line 39
    invoke-direct {v1, v2}, Lj3/b;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, v2}, Lj3/b;->d(Z)V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Lcom/google/android/gms/internal/pal/A1;->f:Lj3/b;
    :try_end_0
    .catch LJ3/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LJ3/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    const/4 v1, 0x0

    .line 50
    iput-object v1, v0, Lcom/google/android/gms/internal/pal/A1;->f:Lj3/b;

    .line 51
    .line 52
    :cond_0
    :goto_0
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
