.class public final Lo/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Z

.field public final synthetic I:Lo/d;


# direct methods
.method public constructor <init>(Lo/d;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo/b;->I:Lo/d;

    .line 5
    .line 6
    iput p2, p0, Lo/b;->G:I

    .line 7
    .line 8
    iput-boolean p4, p0, Lo/b;->H:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/b;->I:Lo/d;

    .line 2
    .line 3
    iget-object v0, v0, Lo/d;->H:Lcom/google/android/gms/internal/ads/b8;

    .line 4
    .line 5
    iget-boolean v1, p0, Lo/b;->H:Z

    .line 6
    .line 7
    iget v2, p0, Lo/b;->G:I

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/b8;->g(IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
