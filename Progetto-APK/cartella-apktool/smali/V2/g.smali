.class public final LV2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW2/b;


# instance fields
.field public final G:Ls6/a;

.field public final H:Ls6/a;


# direct methods
.method public constructor <init>(LK3/g;LV2/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LV2/g;->G:Ls6/a;

    .line 5
    .line 6
    iput-object p2, p0, LV2/g;->H:Ls6/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, LV2/g;->G:Ls6/a;

    .line 2
    .line 3
    invoke-interface {v0}, Ls6/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, LV2/g;->H:Ls6/a;

    .line 10
    .line 11
    invoke-interface {v1}, Ls6/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, LV2/f;

    .line 16
    .line 17
    check-cast v1, LV2/d;

    .line 18
    .line 19
    invoke-direct {v2, v0, v1}, LV2/f;-><init>(Landroid/content/Context;LV2/d;)V

    .line 20
    .line 21
    .line 22
    return-object v2
.end method
