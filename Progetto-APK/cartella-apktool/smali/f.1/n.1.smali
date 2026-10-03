.class public final Lf/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a;


# instance fields
.field public final synthetic a:Lf/o;


# direct methods
.method public constructor <init>(Lf/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf/n;->a:Lf/o;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/n;->a:Lf/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf/o;->p()Lf/w;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lf/w;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, La/m;->K:LS1/f;

    .line 11
    .line 12
    iget-object v0, v0, LS1/f;->b:LS1/e;

    .line 13
    .line 14
    const-string v2, "androidx:appcompat"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, LS1/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lf/w;->c()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
