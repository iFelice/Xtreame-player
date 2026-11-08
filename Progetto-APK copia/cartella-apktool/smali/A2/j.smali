.class public final LA2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ2/b;


# instance fields
.field public final G:Ljava/security/MessageDigest;

.field public final H:LQ2/e;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LQ2/e;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LA2/j;->H:LQ2/e;

    .line 10
    .line 11
    iput-object p1, p0, LA2/j;->G:Ljava/security/MessageDigest;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final c()LQ2/e;
    .locals 1

    .line 1
    iget-object v0, p0, LA2/j;->H:LQ2/e;

    .line 2
    .line 3
    return-object v0
.end method
