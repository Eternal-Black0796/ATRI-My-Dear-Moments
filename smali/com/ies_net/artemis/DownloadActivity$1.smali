.class Lcom/ies_net/artemis/DownloadActivity$1;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/DownloadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ies_net/artemis/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/DownloadActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 410
    iput-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$1;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 410
    new-instance v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    iget-object v1, p0, Lcom/ies_net/artemis/DownloadActivity$1;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-direct {v0, v1}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;-><init>(Lcom/ies_net/artemis/DownloadActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
