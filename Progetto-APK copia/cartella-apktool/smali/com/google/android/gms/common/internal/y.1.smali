.class public final Lcom/google/android/gms/common/internal/y;
.super Lcom/google/android/gms/common/internal/z;
.source "SourceFile"


# instance fields
.field public final synthetic G:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;LK3/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/internal/y;->G:Landroid/content/Intent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/y;->G:Landroid/content/Intent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
.end method
